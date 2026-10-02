%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Integration file for SCRIP
%  Last updated on October 2, 2026
%
%  This file is part of Logtalk <https://logtalk.org/>
%  SPDX-FileCopyrightText: 1998-2026 Paulo Moura <pmoura@logtalk.org>
%  SPDX-FileCopyrightText: 2026 Lon Cherryholmes (the SCRIP integration)
%  SPDX-License-Identifier: Apache-2.0
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% SCRIP compiles a whole program ahead of time, so the adapter, the paths
% file and the compiler/runtime are included at compile time, as gplc does
% with logtalk_comp_gp.pl, rather than consulted at startup

:- include('../adapters/scrip.pl').
:- include('../paths/paths.pl').
:- include('../core/core.pl').
