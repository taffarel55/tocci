# Commands

1. Check syntax of FILEs
`$ ghdl -s [options] files`
Analyze files but do not generate code. This command may be used to check the syntax of files. It does not update the library.

	Ex:  `ghdl -s file.vhdl`

2. Analyze FILEs
`$ ghdl -a [options] files`
The analysis command compiles one or more files, and creates an object file for each source file. The analysis command is selected with -a switch. Any argument starting with a dash is an option, the others are filenames. No options are allowed after a filename argument. GHDL analyzes each filename in the given order, and stops the analysis in case of error (the following files are not analyzed).

	Ex: `ghdl -a file.vhdl`

3. Elaborate UNIT
`$ ghdl -e [options] primary_unit [secondary_unit]`
On GNU/Linux the elaboration command creates an executable containing the code of the `VHDL` sources, the elaboration code and simulation code to execute a design hierarchy. On Windows this command elaborates the design but does not generate anything. The elaboration command is selected with -e switch, and must be followed by either:
	-   a name of a configuration unit
	-   a name of an entity unit
	-   a name of an entity unit followed by a name of an architecture unit

	Name of the units must be a simple name, without any dot. You can select the name of the ‘WORK’ library with the --work=NAME option, as described in [GHDL options](http://ghdl.free.fr/ghdl/GHDL-options.html#GHDL-options).
	
	Ex: `ghdl -e file`

4. Run UNIT
`$ ghdl -r [options] primary_unit [secondary_unit] [simulation_options]`

	The options and arguments are the same as for the elaboration command

	Ex: `ghdl -r file --vcd=wave.vcd`

5. Load on GTKWave GUI
`$ gtkwave wave.vcd`
	




