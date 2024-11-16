# Computational Physics - Numerical Methods

This repository contains the final project for the **Computational Physics** course at UFBA. It includes implementations of several numerical methods applied to various problems in computational physics, with the final project focusing on **wave propagation**.

### Final Work: Wave Propagation Simulation

The main focus of the final project is to simulate wave propagation using the **Finite Difference Method**. The code solves a wave equation with initial and boundary conditions:
- **Initial conditions**:
  - \( y(x, 0) = e^{-x^2} \) (Gaussian distribution)
  - \( y'(x, 0) = 0 \)
- **Boundary conditions**:
  - \( y(-3) = y(3) = 0 \)

The wave propagation is visualized at each time step using Scilab, where results are saved as images showing the evolution of the wave. The simulation uses a spatial grid and time steps defined by the user.  

### Methods Implemented:
1. **ODE_Solution_Method_01_Euler**  
   - Numerical solution to ODEs using the **Euler method**.

2. **ODE_Solution_Method_02_Derivatives**  
   - Implementation of numerical derivatives for ODEs.

3. **ODE_Solution_Method_03_Runge_Kutta**  
   - Solving ODEs using the **Runge-Kutta method**.

4. **Polynomial_Interpolation**  
   - Polynomial interpolation technique to approximate data points.

5. **Newton_Interpolation**  
   - **Newton's method** for polynomial interpolation.

6. **Linear_Interpolation**  
   - Linear interpolation method for estimating values between known data points.

7. **Lagrange_Interpolation**  
   - **Lagrange interpolation** method for polynomial approximation.

8. **Trapezoidal_Integration**  
   - Numerical integration using the **Trapezoidal rule**.

9. **Simpson_1_3_Integration**  
   - **Simpson's 1/3 rule** for numerical integration.

10. **Simpson_3_8_Integration**  
    - **Simpson's 3/8 rule** for numerical integration.

11. **ODE_Finite_Difference_Method**  
    - Solving ODEs using the **Finite Difference method** for wave propagation.

12. **Gradient_Method_Fitting**  
    - **Gradient descent** method for polynomial fitting.

13. **Linear_Fitting**  
    - Linear least squares method for fitting data.

### Project Overview
The main focus of this project is to apply various numerical methods to solve physical problems and simulate wave dynamics. The **wave propagation** simulation uses the **Finite Difference method** to solve the wave equation and visualize the wave behavior over time. The results are stored and can be plotted as images for further analysis.
