# File: makefile
# Created: 10/24/2016
#
# COMSW4115 Fall 2016 (CVN)
# replay
# Eric D. Bolton <edb2129@columbia.edu>

LEX=ocamllex
YACC=ocamlyacc
OC=ocamlc
BLD=ocamlbuild
FIND=ocamlfind
OPT=ocamlopt

OBJ = ast.cmx sast.cmx printer.cmx codegen.cmx parser.cmx scanner.cmx \
	semant.cmx replay.cmx

# Rules
.PHONY: replay.native
replay.native:
	ocamlbuild -use-ocamlfind -pkgs llvm,llvm.analysis -cflags -w,+a-4 \
		replay.native

.PHONY: clean
clean:
	ocamlbuild -clean
	rm -rf testall.log *.diff scanner.ml parser.ml parser.mli
	rm -rf *.cmx *.cmi *.cmo *.cmx *.o *~

replay: $(OBJ)
	$(FIND) $(OPT) -linkpkg -package llvm -package llvm.analysis $(OBJ) -o replay

printer: $(OBJ)
	$(FIND) $(OPT) -linkpkg -package llvm -package llvm.analysis $(OBJ) -o printer

scanner.ml: scanner.mll
	$(LEX) $<

parser.ml parser.mli : parser.mly
	$(YACC) $<

%.cmo: %.ml
	$(OC) -c $<

%.cmi: %.mli
	$(OC) -c $<

%.cmx: %.ml
	$(FIND) $(OPT) -c -package llvm $<

ast.cmo :
ast.cmx :
sast.cmo : ast.cmo sast.cmi
sast.cmx : ast.cmx sast.cmi
parser.cmo : ast.cmo parser.cmi
parser.cmx : ast.cmx parser.cmi
replay.cmo : semant.cmo scanner.cmo parser.cmi codegen.cmo ast.cmo
replay.cmx : semant.cmx scanner.cmx parser.cmx codegen.cmx ast.cmx
printer.cmo : ast.cmo sast.cmo parser.cmo printer.cmi
printer.cmx : ast.cmx sast.cmx parser.cmx printer.cmi
codegen.cmo : ast.cmo sast.cmo printer.cmo codegen.cmi
codegen.cmx : ast.cmx sast.cmx printer.cmx codegen.cmi
scanner.cmo : parser.cmi printer.cmi scanner.cmi
scanner.cmx : parser.cmx printer.cmx scanner.cmi
semant.cmo : ast.cmo sast.cmo
semant.cmx : ast.cmx sast.cmx
sast.cmi : ast.cmo
parser.cmi : ast.cmo
printer.cmi : ast.cmo sast.cmo parser.cmo
scanner.cmi : parser.cmo printer.cmo
codegen.cmi : ast.cmo printer.cmo
