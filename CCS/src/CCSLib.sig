(*
 * Copyright 1991-1995  University of Cambridge (Author: Monica Nesi)
 * Copyright 2016-2017  University of Bologna   (Author: Chun Tian)
 *)

signature CCSLib =
sig
  include Abbrev

  val PAT_X_ASSUM		: term -> thm_tactic -> tactic
  val fix			: Q.tmquote list -> tactic
  val set			: Q.tmquote list -> tactic
  val take			: Q.tmquote list -> tactic
  val //			: tactic -> tactic

  val add_rules_for_ccs_terms	: unit -> unit
  val remove_rules_for_ccs_terms: unit -> unit

  val ONCE_REWRITE_RHS_RULE	: thm list -> thm -> thm
  val PURE_REWRITE_RHS_RULE	: thm list -> thm -> thm
  val REWRITE_RHS_RULE		: thm list -> thm -> thm
  val ONCE_REWRITE_RHS_TAC	: thm list -> tactic
  val REWRITE_RHS_TAC		: thm list -> tactic
  val ONCE_REWRITE_LHS_RULE	: thm list -> thm -> thm
  val PURE_REWRITE_LHS_RULE	: thm list -> thm -> thm
  val REWRITE_LHS_RULE		: thm list -> thm -> thm
  val ONCE_REWRITE_LHS_TAC	: thm list -> tactic
  val REWRITE_LHS_TAC		: thm list -> tactic
  val ONCE_ASM_REWRITE_LHS_RULE	: thm list -> thm -> thm
  val ONCE_ASM_REWRITE_LHS_TAC	: thm list -> tactic
  val SWAP_FORALL_CONV		: term -> thm
  val STRIP_FORALL_RULE		: (thm -> thm) -> thm -> thm
  val EQ_IMP_LR			: thm -> thm
  val EQ_IMP_RL			: thm -> thm
  val lconcl			: thm -> term
  val rconcl			: thm -> term

  val args_thm			: thm -> term * term
  val lhs_tm			: thm -> term
  val rhs_tm			: thm -> term
  val args_equiv		: term -> term * term * term
  val elim			: term -> term list -> term list
  val list_apply_tac		: ('a -> tactic) -> 'a list -> tactic list

end

(* last updated: May 14, 2017 *)
