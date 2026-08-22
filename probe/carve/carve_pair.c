#include <stdio.h>
#include <stdint.h>
static inline uint64_t rd(void){unsigned a,d;__asm__ __volatile__("rdtscp":"=a"(a),"=d"(d)::"rcx");return ((uint64_t)d<<32)|a;}
#define CHAINED_GROUP "sub $16,%%rsp\n\t mov %%rax,0(%%rsp)\n\t mov %%rdx,8(%%rsp)\n\t"
#define G8 CHAINED_GROUP CHAINED_GROUP CHAINED_GROUP CHAINED_GROUP CHAINED_GROUP CHAINED_GROUP CHAINED_GROUP CHAINED_GROUP
static uint64_t chained(uint64_t n){uint64_t t0=rd();
 __asm__ __volatile__("1:\n\t" G8 "add $128,%%rsp\n\t dec %0\n\t jnz 1b\n\t":"+r"(n)::"rax","rdx","memory","cc");
 return rd()-t0;}
static uint64_t coalesced(uint64_t n){uint64_t t0=rd();
 __asm__ __volatile__("1:\n\t sub $128,%%rsp\n\t"
   "mov %%rax,112(%%rsp)\n\t mov %%rdx,120(%%rsp)\n\t mov %%rax,96(%%rsp)\n\t mov %%rdx,104(%%rsp)\n\t"
   "mov %%rax,80(%%rsp)\n\t mov %%rdx,88(%%rsp)\n\t  mov %%rax,64(%%rsp)\n\t mov %%rdx,72(%%rsp)\n\t"
   "mov %%rax,48(%%rsp)\n\t mov %%rdx,56(%%rsp)\n\t  mov %%rax,32(%%rsp)\n\t mov %%rdx,40(%%rsp)\n\t"
   "mov %%rax,16(%%rsp)\n\t mov %%rdx,24(%%rsp)\n\t  mov %%rax,0(%%rsp)\n\t  mov %%rdx,8(%%rsp)\n\t"
   "add $128,%%rsp\n\t dec %0\n\t jnz 1b\n\t":"+r"(n)::"rax","rdx","memory","cc");
 return rd()-t0;}
int main(void){uint64_t N=20000000ULL; chained(N/10); coalesced(N/10);
 double bc=0,bo=0; int R=9;
 for(int r=0;r<R;r++){ uint64_t c=chained(N), o=coalesced(N);
   double pc=(double)c/N, po=(double)o/N; if(r==0||pc<bc)bc=pc; if(r==0||po<bo)bo=po; }
 printf("chained  (8 x sub rsp,16 + 16 stores): %.3f cyc/iter\n",bc);
 printf("coalesced(1 x sub rsp,128 + 16 stores): %.3f cyc/iter\n",bo);
 printf("delta = %.3f cyc for 7 removed carves  =>  %.4f cyc PER CARVE\n",bc-bo,(bc-bo)/7.0);
 return 0;}
