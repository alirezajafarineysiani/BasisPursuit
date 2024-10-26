# Basis Pursuit

A MATLAB-based code to solve the Basis Pursuit problem using linear programming.

## Problem Statement

The objective is to minimize the following:

$$ 
\hat{\mathbf{x}} =  \quad \\underset{\mathbf{x}}{\textrm{minimize}} \quad \lVert\mathbf{x}\rVert_1 \quad \textrm{subject to:} \quad \mathbf{A} \mathbf{x} = \mathbf{b} 
$$

where:
- $$\hat{\mathbf{x}} \in \mathcal{R}^{m}$$ is the recovered sparse signal,
- $$\mathbf{A} \in \mathcal{R}^{n \times m} $$ is the sensing matrix,
- $$\mathbf{b} \in \mathcal{R}^{n} $$ is the measurement vector.

## Usage

To run the code, simply execute the `basis_pursuit.m` file in MATLAB.

## Requirements

Ensure you have MATLAB with the Optimization Toolbox installed.

## Corresponding Mathematical Representation

The MATLAB function `BP(Aeq, beq, method)` implements the following formulation:

1. Define the objective function:

$$
\mathbf{f} = \begin{bmatrix}
1 \\
1 \\
\vdots \\
1 \\
1 \\
\vdots \\
1
\end{bmatrix}
$$

where the vector $$\mathbf{f}$$ has a length of $$2m$$.

2. The equality constraints are constructed as:

$$ 
\begin{bmatrix}
A_{eq} & -A_{eq}
\end{bmatrix} \quad \text{and} \quad A \mathbf{x} = b 
$$

3. The inequality constraints are represented by:

$$ 
\mathbf{x} \geq 0 
$$

4. The estimated solution is given by:

$$ 
s_{\text{estim}} = A \mathbf{x} 
$$

where:
- \(m\) is the number of variables,
- \(\text{method}\) specifies the linear programming algorithm, which must be one of the following:
  - `'dual-simplex'` (default)
  - `'interior-point'`
