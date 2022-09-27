// ////////////////////////////////////////////////////////////////////////
// Copyright (C) 2019, Xilinx Inc - All rights reserved
//
// Licensed under the Apache License, Version 2.0 (the "License"). You may
// not use this file except in compliance with the License. A copy of the
// License is located at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
// License for the specific language governing permissions and limitations
// under the License.
// ////////////////////////////////////////////////////////////////////////

`ifndef MDMA_128BX2048_128BWE_RAM_IF_SV
`define MDMA_128BX2048_128BWE_RAM_IF_SV

interface mdma_128bx2048_128bwe_ram_if();
        logic   [$clog2(WRB_CTXT_RAM_DEPTH)-1:0]   wadr; 
        logic           wen;
        //logic           wpar;
        logic   [WRB_CTXT_RAM_DATA_BITS-1:0]  wdat;  
        logic           ren;
        logic   [$clog2(WRB_CTXT_RAM_DEPTH)-1:0]   radr;
        //logic           rpar;
        logic   [WRB_CTXT_RAM_DATA_BITS-1:0]  rdat;
        logic           rsbe;
        logic           rdbe;

        modport  m (
                output  wadr,
                output  wen,
                //output  wpar,
                output  wdat,
                output  ren,
                output  radr,
                //input   rpar,
                input   rdat,
                input   rsbe,
                input   rdbe
         );
        modport  s (
                input   wadr,
                input   wen,
                //input   wpar,
                input   wdat,
                input   ren,
                input   radr,
                //output  rpar,
                output  rdat,
                output  rsbe,
                output  rdbe
         );
endinterface

`endif
