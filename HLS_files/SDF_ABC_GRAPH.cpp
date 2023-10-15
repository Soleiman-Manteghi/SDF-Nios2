//  Copyright (c) 2021 Intel Corporation                                  
//  SPDX-License-Identifier: MIT                                          

#include <iostream>
#include "HLS/hls.h"


// It is recommended to use ihc::stream_in/ihc::stream_out for communicating
// outside the component and ihc::stream for within the component. However, in
// this example, since the generalized task_function can only take ihc::stream
// as a reference parameter, we must use ihc::stream for communicating
// with the external system.
ihc::stream<int, ihc::buffer<8> > s0, s1, s2, s3, s4;


// Functions that are launched cannot take reference parameters so to reuse
// this function (to instantiate three copies of the HW), we must create a
// wrapper for each instance (connected to different streams)

void task_Function_ActorA(ihc::stream<int, ihc::buffer<8> > &s0_in,ihc::stream<int, ihc::buffer<8> > &s1_out, ihc::stream<int, ihc::buffer<8> > &s2_out) {
    static unsigned int cnt = 0;
    if(cnt==0)
    {
    	cnt++;
    	s1_out.write(1);
    	s2_out.write(1);
    	s2_out.write(1);
    	
    	s1_out.write(1);
    	s2_out.write(1);
    	s2_out.write(1);
    	
    	
    }
    else
    {
    	if(cnt==60)
    	{
	    	cnt=1;
		int input = s0_in.read();
		input += 1;
		s1_out.write(1);
    		s2_out.write(1);
    		s2_out.write(1);
    	}
    	else
    	{
	    	cnt++;
		int input = s0_in.read();
		input += 1;
		s1_out.write(input );
		s2_out.write(input );
		s2_out.write(input );
    	}
    }
}

void task_Function_ActorB(ihc::stream<int, ihc::buffer<8> > &A2,ihc::stream<int, ihc::buffer<8> > &A3) {
    int input = A2.read();
    input = A2.read();
    input = A2.read();
    input = A2.read();
    A3.write(input);
}

void task_Function_ActorC(ihc::stream<int, ihc::buffer<8> > &A1,ihc::stream<int, ihc::buffer<8> > &A2,ihc::stream<int, ihc::buffer<8> > &A3) {
    int input1 = A1.read();
    input1 = A1.read();
    int input2 = A2.read();
    A3.write(input1);
    A3.write(input1);

}

void task_ActorA() {
  task_Function_ActorA(s0, s1, s2);
}

void task_ActorB() {
  task_Function_ActorB(s2,s3);
}

void task_ActorC() {
  task_Function_ActorC(s1,s3,s4);
}



component  hls_always_run_component void SDF_ABC_ACTOR() {
  ihc::launch_always_run<task_ActorA>();
  ihc::launch_always_run<task_ActorB>();
  ihc::launch_always_run<task_ActorC>();

}



