use Data::Dumper;
use Getopt::Long;
use Getopt::Long;
use Carp;
use FindBin qw($Bin);
use lib "$Bin/../lib";
use Cwd;
use Cwd 'abs_path';

print("
MODULE = C::sparse         PACKAGE = C::sparse

BOOT:
    sparsestash = gv_stashpv(\"C::sparse\", TRUE);

");

foreach my $v (qw(
	TOKEN_EOF
	TOKEN_ERROR
	TOKEN_IDENT
	TOKEN_ZERO_IDENT
	TOKEN_NUMBER
	TOKEN_CHAR
	TOKEN_CHAR_EMBEDDED_0
	TOKEN_CHAR_EMBEDDED_1
	TOKEN_CHAR_EMBEDDED_2
	TOKEN_CHAR_EMBEDDED_3
	TOKEN_WIDE_CHAR
	TOKEN_WIDE_CHAR_EMBEDDED_0
	TOKEN_WIDE_CHAR_EMBEDDED_1
	TOKEN_WIDE_CHAR_EMBEDDED_2
	TOKEN_WIDE_CHAR_EMBEDDED_3
	TOKEN_STRING
	TOKEN_WIDE_STRING
	TOKEN_SPECIAL
	TOKEN_STREAMBEGIN
	TOKEN_STREAMEND
	TOKEN_MACRO_ARGUMENT
	TOKEN_STR_ARGUMENT
	TOKEN_QUOTED_ARGUMENT
	TOKEN_CONCAT
	TOKEN_GNU_KLUDGE
	TOKEN_UNTAINT
	TOKEN_ARG_COUNT
	TOKEN_IF
	TOKEN_SKIP_GROUPS
	TOKEN_ELSE
	TOKEN_CONS

	SPECIAL_BASE
	SPECIAL_ADD_ASSIGN
	SPECIAL_INCREMENT
	SPECIAL_SUB_ASSIGN
	SPECIAL_DECREMENT
	SPECIAL_DEREFERENCE
	SPECIAL_MUL_ASSIGN
	SPECIAL_DIV_ASSIGN
	SPECIAL_MOD_ASSIGN
	SPECIAL_LTE
	SPECIAL_GTE
	SPECIAL_EQUAL
	SPECIAL_NOTEQUAL
	SPECIAL_LOGICAL_AND
	SPECIAL_AND_ASSIGN
	SPECIAL_LOGICAL_OR
	SPECIAL_OR_ASSIGN
	SPECIAL_XOR_ASSIGN
	SPECIAL_HASHHASH
	SPECIAL_LEFTSHIFT
	SPECIAL_RIGHTSHIFT
	SPECIAL_DOTDOT
	SPECIAL_SHL_ASSIGN
	SPECIAL_SHR_ASSIGN
	SPECIAL_ELLIPSIS
	SPECIAL_ARG_SEPARATOR
	SPECIAL_UNSIGNED_LT
	SPECIAL_UNSIGNED_GT
	SPECIAL_UNSIGNED_LTE
	SPECIAL_UNSIGNED_GTE

	EXPR_VALUE 
	EXPR_STRING
	EXPR_SYMBOL
	EXPR_TYPE
	EXPR_BINOP
	EXPR_ASSIGNMENT
	EXPR_LOGICAL
	EXPR_DEREF
	EXPR_PREOP
	EXPR_POSTOP
	EXPR_CAST
	EXPR_FORCE_CAST
	EXPR_IMPLIED_CAST
	EXPR_SIZEOF
	EXPR_ALIGNOF
	EXPR_PTRSIZEOF
	EXPR_CONDITIONAL
	EXPR_SELECT		
	EXPR_STATEMENT
	EXPR_CALL
	EXPR_COMMA
	EXPR_COMPARE
	EXPR_LABEL
	EXPR_INITIALIZER	
	EXPR_IDENTIFIER	
	EXPR_INDEX		
	EXPR_POS		
	EXPR_FVALUE
	EXPR_SLICE
	EXPR_OFFSETOF

	EXPANSION_CMDLINE
	EXPANSION_STREAM
        EXPANSION_MACRODEF
	EXPANSION_MACRO
	EXPANSION_MACROARG
	EXPANSION_CONCAT
	EXPANSION_PREPRO
	EXPANSION_SUBST

        CONSTANT_FILE_MAYBE
        CONSTANT_FILE_IFNDEF
        CONSTANT_FILE_NOPE
        CONSTANT_FILE_YES

	NS_NONE 
	NS_MACRO 
	NS_TYPEDEF 
	NS_STRUCT 
	NS_LABEL 
	NS_SYMBOL 
	NS_ITERATOR 
	NS_PREPROCESSOR 
	NS_UNDEF 
	NS_KEYWORD 

	SYM_UNINITIALIZED 
	SYM_PREPROCESSOR
	SYM_BASETYPE
	SYM_NODE
	SYM_PTR
	SYM_FN
	SYM_ARRAY
	SYM_STRUCT
	SYM_UNION
	SYM_ENUM
	SYM_TYPEDEF
	SYM_TYPEOF
	SYM_MEMBER
	SYM_BITFIELD
	SYM_LABEL
	SYM_RESTRICT
	SYM_FOULED
	SYM_KEYWORD
	SYM_BAD

	STMT_NONE       
	STMT_DECLARATION
	STMT_EXPRESSION 
	STMT_COMPOUND   
	STMT_IF	   
	STMT_RETURN	   
	STMT_CASE	   
	STMT_SWITCH	   
	STMT_ITERATOR   
	STMT_LABEL	   
	STMT_GOTO	   
	STMT_ASM	   
	STMT_CONTEXT    
	STMT_RANGE
        
	KW_SPECIFIER 	
	KW_MODIFIER	
	KW_QUALIFIER	
	KW_ATTRIBUTE	
	KW_STATEMENT	
	KW_ASM		
	KW_MODE		
	KW_SHORT	
	KW_LONG		
	KW_EXACT	

	MOD_AUTO	
	MOD_REGISTER	
	MOD_STATIC	
	MOD_EXTERN	
	MOD_CONST	
	MOD_VOLATILE	
	MOD_SIGNED	
	MOD_UNSIGNED	
	MOD_CHAR	
	MOD_SHORT	
	MOD_LONG	
	MOD_LONGLONG	
	MOD_LONGLONGLONG
	MOD_PURE	
	MOD_TYPEDEF	
	MOD_TLS		
	MOD_INLINE	
	MOD_ADDRESSABLE	
	MOD_NOCAST	
	MOD_NODEREF	
	MOD_ACCESSED	
	MOD_TOPLEVEL	
	MOD_ASSIGNED	
	MOD_TYPE	
	MOD_SAFE	
	MOD_USERTYPE	
	MOD_NORETURN	
	MOD_EXPLICITLY_SIGNED	
	MOD_BITWISE	


    )) {
     print("    newCONSTSUB(sparsestash, \"$v\",            newSViv($v));\n");
   }

print("
");

