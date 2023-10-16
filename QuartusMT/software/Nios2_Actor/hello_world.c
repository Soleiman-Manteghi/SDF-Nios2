/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <system.h>
#include <altera_avalon_fifo_regs.h>
#include <altera_avalon_fifo_util.h>

int main()
{
	printf("Hello from Nios II!\n");
	while(1)
	{

		  int read_data;

		 do {
			 read_data= altera_avalon_fifo_read_fifo(NIOSE_INPUT_OUT_BASE,NIOSE_INPUT_IN_CSR_BASE );
		 } while(read_data==0);

		 printf("read data: %d\n",read_data);
		 altera_avalon_fifo_write_fifo(NIOS_OUTPUT_IN_BASE ,NIOS_OUTPUT_IN_CSR_BASE,read_data);
	}
  return 0;
}
