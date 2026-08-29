#include <stdio.h>
#include <stdint.h>
#include <time.h>
static inline uint64_t rd(void){unsigned a,d;__asm__ __volatile__("rdtscp":"=a"(a),"=d"(d)::"rcx");return ((uint64_t)d<<32)|a;}
#define S8  "sub $16,%%rsp\n\t sub $16,%%rsp\n\t sub $16,%%rsp\n\t sub $16,%%rsp\n\t sub $16,%%rsp\n\t sub $16,%%rsp\n\t sub $16,%%rsp\n\t sub $16,%%rsp\n\t"
#define ST1 "sub $16,%%rsp\n\t mov %%rax,0(%%rsp)\n\t"
#define T8  ST1 ST1 ST1 ST1 ST1 ST1 ST1 ST1
static uint64_t bare8(uint64_t n){uint64_t t=rd();__asm__ __volatile__("1:\n\t" S8 "add $128,%%rsp\n\t dec %0\n\t jnz 1b\n\t":"+r"(n)::"memory","cc");return rd()-t;}
static uint64_t bare1(uint64_t n){uint64_t t=rd();__asm__ __volatile__("1:\n\t sub $128,%%rsp\n\t add $128,%%rsp\n\t dec %0\n\t jnz 1b\n\t":"+r"(n)::"memory","cc");return rd()-t;}
static uint64_t one8(uint64_t n){uint64_t t=rd();__asm__ __volatile__("1:\n\t" T8 "add $128,%%rsp\n\t dec %0\n\t jnz 1b\n\t":"+r"(n)::"rax","memory","cc");return rd()-t;}
static uint64_t one1(uint64_t n){uint64_t t=rd();__asm__ __volatile__("1:\n\t sub $128,%%rsp\n\t"
  "mov %%rax,112(%%rsp)\n\t mov %%rax,96(%%rsp)\n\t mov %%rax,80(%%rsp)\n\t mov %%rax,64(%%rsp)\n\t"
  "mov %%rax,48(%%rsp)\n\t mov %%rax,32(%%rsp)\n\t mov %%rax,16(%%rsp)\n\t mov %%rax,0(%%rsp)\n\t"
  "add $128,%%rsp\n\t dec %0\n\t jnz 1b\n\t":"+r"(n)::"rax","memory","cc");return rd()-t;}
static double best(uint64_t(*f)(uint64_t),uint64_t N,int R){double b=0;for(int r=0;r<R;r++){double v=(double)f(N)/N;if(r==0||v<b)b=v;}return b;}
int main(void){
  uint64_t N=20000000ULL;
  struct timespec a,b; uint64_t c0=rd(); clock_gettime(CLOCK_MONOTONIC,&a);
  for(volatile uint64_t i=0;i<200000000ULL;i++); uint64_t c1=rd(); clock_gettime(CLOCK_MONOTONIC,&b);
  double ns=(b.tv_sec-a.tv_sec)*1e9+(b.tv_nsec-a.tv_nsec); double tsc_ghz=(c1-c0)/ns;
  printf("TSC frequency ~ %.3f GHz  (rdtscp ticks are TSC ticks, NOT core cycles)\n\n",tsc_ghz);
  bare8(N/10);bare1(N/10);one8(N/10);one1(N/10);
  double b8=best(bare8,N,9),b1=best(bare1,N,9),o8=best(one8,N,9),o1=best(one1,N,9);
  printf("A  8x sub rsp,16, NO stores      : %.4f tsc/iter\n",b8);
  printf("B  1x sub rsp,128, NO stores     : %.4f tsc/iter\n",b1);
  printf("   -> isolated carve price       : %.4f tsc = %.4f ns  (7 carves removed)\n",(b8-b1)/7,(b8-b1)/7/tsc_ghz);
  printf("C  8x (sub rsp,16 + 1 store)     : %.4f tsc/iter\n",o8);
  printf("D  1x sub rsp,128 + 8 stores     : %.4f tsc/iter\n",o1);
  printf("   -> carve price with 1 store   : %.4f tsc = %.4f ns\n",(o8-o1)/7,(o8-o1)/7/tsc_ghz);
  return 0;}
