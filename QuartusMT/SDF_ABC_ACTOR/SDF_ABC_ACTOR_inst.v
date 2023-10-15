// Example instance of the top level module for: 
//     SDF_ABC_ACTOR
// To include this component in your design, include: 
//     SDF_ABC_ACTOR.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

SDF_ABC_ACTOR SDF_ABC_ACTOR_inst (
  // Interface: clock (clock end)
  .clock   ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn  ( ), // 1-bit reset_n input
  // Interface: s0 (avalon_streaming sink)
  .s0_data ( ), // 32-bit data input
  .s0_ready( ), // 1-bit ready output
  .s0_valid( ), // 1-bit valid input
  // Interface: s4 (avalon_streaming source)
  .s4_data ( ), // 32-bit data output
  .s4_ready( ), // 1-bit ready input
  .s4_valid( )  // 1-bit valid output
);
