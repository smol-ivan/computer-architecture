# from sympy.logic import SOPform
# from sympy.abc import w, x, y, z
# 
# """
#  Next state logic for s0 state
# """
# 
# # Next state logic from s1 to s0
# miniterms_s1_to_s0 = [0, 1, 2, 3, 4, 5, 8, 9, 10, 11, 12, 13, 14, 15]
# simp_s1_to_s0 = SOPform([w, x, y, z], miniterms_s1_to_s0)
# print(f'La forma simplificada para el estado s0 de s1 es: {simp_s1_to_s0}\n')
# 
# # Next state logic from s2 to s0
# miniterms_s2_to_s0 = [0, 1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15]
# simp_s2_to_s0 = SOPform([w, x, y, z], miniterms_s2_to_s0)
# print(f'la forma simplificada para el estado s0 de s2 es: {simp_s2_to_s0}\n')
# 
# # Next state logic from s0 to s0
# miniterms_s0_to_s0 = [0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15]
# simp_s0_to_s0 = SOPform([w, x, y, z], miniterms_s0_to_s0)
# print(f'la forma simplificada para el estado s0 de s0 es: {simp_s0_to_s0}\n')

from sympy import *

# w, x, y, z = symbols('w, x, y, z')

# s0_to_s0_miniterms = [0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15]
# s0_to_s0 = SOPform([w, x, y, z], s0_to_s0_miniterms)
# print(f'La ecuacion para s0 de s0 es: {s0_to_s0}')
# 
# s1_to_s0_miniterms = [0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15]
# s1_to_s0 = SOPform([w, x, y, z], s0_to_s0_miniterms)
# print(f'La ecuacion para s0 de s0 es: {s1_to_s0}')

# q1, q0 = symbols('q1, q0')
#
# f0_min = [22, 38]
# f0_dont_cares = [i for i in range(64) if (i >= 0 and i < 16) or (i >= 48 and i < 64)]
# f0 = SOPform([q1, q0, w, x, y, z], f0_min, f0_dont_cares)
# print(f'La forma simplificada de 0 es: {f0}')
#
# f1_min = [39]
# f1_dont_cares = [i for i in range(64) if (i >= 0 and i < 16) or (i >= 48 and i < 64)]
# f1 = SOPform([q1, q0, w, x, y, z], f1_min, f1_dont_cares)
# print(f'La forma simplificada de f1 es: {f1}')

# x, q0, q1, q2, q3, q4, q5, q6, q7 = symbols('x, q0, q1, q2, q3, q4, q5, q6, q7')
#
# f7_min = [1, 2, 4, 8, 16, 32, 64, 128]
# f7_dont_cares = [i for i in range(256) if i not in [1, 2, 4, 8, 16, 32, 64, 128]]
# f7 = SOPform([q7, q6, q5, q4, q3, q2, q1, q0], f7_min, f7_dont_cares)
# print(f'La forma simplificada de f7 es: {f7}')

# from sympy import *

# Define Boolean symbols
q0, q1, q2, q3, q4, q5, q6, q7 = symbols('q0 q1 q2 q3 q4 q5 q6 q7')

f7_min = [1, 2, 4, 8, 16, 32, 64, 128]
f7_dont_cares = [i for i in range(256) if i not in [1, 2, 4, 8, 16, 32, 64, 128]]
f7 = SOPform([q7, q6, q5, q4, q3, q2, q1, q0], f7_min, f7_dont_cares)
print(f'La forma simplificada de f7 es: {f7}')
