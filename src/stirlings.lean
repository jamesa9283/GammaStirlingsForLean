import measure_theory.integral.interval_integral

noncomputable theory

def subs (n : ℕ) (t : ℝ) := t/n

lemma thing1 (n : ℕ) : continuous_on (subs n) (set.interval 0 n) :=
begin
  apply continuous_on.div,
  { apply continuous_on_id},
  { apply continuous_on_const},
  { intros x hx, 
    have h₁ := set.nonempty_interval,
    
    sorry},
end

example (n : ℕ) (x : ℝ) : ∫ (t : ℝ) in 0..n, (1 - t/n)^n * t^(x - 1) = n^x * ∫ (s : ℝ) in 0..1, (1 - s)^x * s^(x - 1) :=
begin
  refine interval_integral.integral_comp_mul_deriv'' (λ t, t/n) _ _,
  sorry
end