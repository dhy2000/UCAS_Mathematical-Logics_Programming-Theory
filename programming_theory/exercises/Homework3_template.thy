theory Homework3_template
  imports "HOL-IMP.Hoare_Examples"
begin

inductive star :: "('a \<Rightarrow> 'a \<Rightarrow> bool) \<Rightarrow> 'a \<Rightarrow> 'a \<Rightarrow> bool"  for r where
  refl:  "star r x x"
| step:  "r x y \<Longrightarrow> star r y z \<Longrightarrow> star r x z"

(* Problem 1 *)

inductive palindrome :: "'a list \<Rightarrow> bool" where
  "palindrome []"  (* complete definition *)

lemma "palindrome xs \<Longrightarrow> rev xs = xs"
  sorry  (* replace with proof *)


(* Problem 2 *)

inductive star' :: "('a \<Rightarrow> 'a \<Rightarrow> bool) \<Rightarrow> 'a \<Rightarrow> 'a \<Rightarrow> bool" for r where
  refl': "star' r x x"
| step': "star' r x y \<Longrightarrow> r y z \<Longrightarrow> star' r x z"

lemma "star' r x y \<Longrightarrow> star r x y"
  sorry  (* replace with proof *)

lemma "star r x y \<Longrightarrow> star' r x y"
  sorry  (* replace with proof *)


(* Problem 3 *)

lemma
  "\<turnstile> {\<lambda>s. s ''x'' = x \<and> s ''y'' = y \<and> 0 \<le> x}
     WHILE Less (N 0) (V ''x'') DO (
       ''x'' ::= Plus (V ''x'') (N (-1));;
       ''y'' ::= Plus (V ''y'') (N (-1))
     )
     {\<lambda>t. t ''y'' = y - x}"
  sorry  (* replace with proof *)


(* Problem 4 *)

(* Hint: use algebra_simps and power2_eq_square *)
thm algebra_simps
thm power2_eq_square

lemma
  "\<turnstile> { \<lambda>s. s ''x'' = i \<and> 0 \<le> i}                  \<comment> \<open>x = i \<and> 0 \<le> i\<close>
     ''r'' ::= N 0;; ''r2'' ::= N 1;;             \<comment> \<open>r := 0; r2 := 1;\<close>
     WHILE (Not (Less (V ''x'') (V ''r2'')))      \<comment> \<open>while (!x < r2)) {\<close>
     DO (''r'' ::= Plus (V ''r'') (N 1);;         \<comment> \<open>   r := r + 1\<close>
         ''r2'' ::= Plus (V ''r2'')               \<comment> \<open>   r2 := r2 + (r + r + 1)\<close>
            (Plus (Plus (V ''r'') (V ''r'')) (N 1)))
     {\<lambda>s. (s ''r'')^2 \<le> i \<and> i < (s ''r'' + 1)^2}"  \<comment> \<open>r ^ 2 \<le> i \<and> i < (r+1) ^ 2\<close>
  sorry  (* replace with proof *)


end
