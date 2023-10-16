/* Quartus Prime Version 22.1std.0 Build 915 10/25/2022 SC Standard Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));
	P ActionCode(Cfg)
		Device PartName(5CSEBA6U23) Path("/home/soleimanmanteghi/intelFPGA/SDFProject/Repository_SDF_with_nios_imp/QuartusMT/output_files/") File("FB_SDF.sof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
