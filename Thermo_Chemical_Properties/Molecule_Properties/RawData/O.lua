-- Collater: Rowan J. Gollan
-- Date: 30-Mar-2009

O = {}
O.M = {
   value = 15.9994e-3,
   units = 'kg/mol',
   description = 'molecular mass',
   reference = 'CEA2::thermo.inp'
}
O.atomic_constituents = {O=1}
O.charge = 0
O.gamma = {
   value = 5/3,
   units = 'non-dimensional',
   description = '(ideal) ratio of specific heats at room temperature',
   reference = 'monatomic gas'
}
-- O.viscosity = {
--    model = "Blottner",
--    parameters = { 
--       A_mu = 0.0436378, B_mu = -0.0335511, C_mu = -9.5767430,
--       ref = "Table 4, ESA Radiation Test Case 8 (2014)"
--    }
-- }
O.viscosity = {
   model = "CEA",
   parameters = {
      {T_low=1000.0, T_high=5000.0, A=0.77269241e+00, B=0.83842977e+02, C=-0.58502098e+05, D=0.85100827e+00},
      {T_low=5000.0, T_high=15000.0, A=0.87669586e+00, B=0.10158420e+04, C=-0.10884566e+07, D=-0.18001077e+00},
      ref = 'from CEA2::trans.inp which cites Levin et al (1990)'
   }
}
O.thermal_conductivity = {
   model = "CEA",
   parameters = {
      {T_low=1000.0, T_high=5000.0, A=0.77271664e+00, B=0.83989100e+02, C=-0.58580966e+05, D=0.15179900e+01},
      {T_low=5000.0, T_high=15000.0, A=0.87676666e+00, B=0.10170744e+04, C=-0.10906690e+07, D=0.48644232e+00},
      ref = 'from CEA2::trans.inp which cites Levin et al (1990)'
   }
}
O.CEA_coeffs = {
  { T_low  = 200.0,
    T_high = 1000.0,
    coeffs = {-7.953611300e+03,  1.607177787e+02,  1.966226438e+00,
	       1.013670310e-03, -1.110415423e-06,  6.517507500e-10,
	      -1.584779251e-13,  2.840362437e+04,  8.404241820e+00}
  },
  { T_low  = 1000.0,
    T_high = 6000.0,
    coeffs = { 2.619020262e+05, -7.298722030e+02,  3.317177270e+00,
              -4.281334360e-04,  1.036104594e-07, -9.438304330e-12,
               2.725038297e-16,  3.392428060e+04, -6.679585350e-01}
  },
  { T_low  = 6000.0,
    T_high = 20000.0,
    coeffs = { 1.779004264e+08, -1.082328257e+05,  2.810778365e+01,
              -2.975232262e-03,  1.854997534e-07, -5.796231540e-12,
               7.191720164e-17,  8.890942630e+05, -2.181728151e+02}
  },
  ref="from CEA2::thermo.inp"
}

-- Nonequilibrium data

O.species_type = "monatomic"
O.eps0 = {
  value = 1.473162086e-21,
  units = 'J',
  description = 'Depth of the intermolecular potential minimum',
  reference = 'Svehla (1962) NASA Technical Report R-132'
}
O.sigma = {
  value = 3.050e-10,
  units = 'm',
  description = 'Hard sphere collision diameter',
  reference = 'Svehla (1962) NASA Technical Report R-132'
}
O.s_0 = {
   value = 10066.56,
   units = 'J/kg-K',
   description = 'Standard state entropy at 1 bar',
   reference = 'NIST Chemistry WebBook: http://webbook.nist.gov/chemistry/'
}
O.h_f = {
   value = 1.557402e+07,
   units = 'J/kg',
   description = 'Heat of formation',
   reference = 'from CEA2::thermo.inp'
}
O.I = {
   value = 8.2124270e+07,
   units = 'J/kg',
   description = 'Ground state ionization energy',
   reference = 'NIST Chemistry WebBook: http://webbook.nist.gov/chemistry/'
}
O.Z = {
   value = 0,
   units = 'ND',
   description = 'Charge number',
   reference = 'NA'
}
O.electronic_levels = {
   -- n_levels = 283,
   n_levels = 5,
   ref = 'NIST ASD: http://physics.nist.gov/PhysRefData/ASD/index.html',
   comments = 'All the individual NIST levels expressed as multiplets',
   -- ===========================================================
   --   No.    n      E(cm-1)      g     l     L     S    parity 
   -- ===========================================================
   ilev_0   =  { 2,       77.97,     9,   -1,    1,    1,    2 },
   ilev_1   =  { 2,    15867.86,     5,   -1,    2,    0,    2 },
   ilev_2   =  { 2,    33792.58,     1,   -1,    0,    0,    2 },
   ilev_3   =  { 2,    73768.20,     5,    0,    0,    2,    1 },
   ilev_4   =  { 2,    76794.98,     3,    0,    0,    1,    1 },
   ilev_5   =  { 2,    86629.09,    15,    1,    1,    2,    2 },
   ilev_6   =  { 2,    88630.98,     9,    1,    1,    1,    2 },
   ilev_7   =  { 2,    95476.73,     5,    0,    0,    2,    1 },
   ilev_8   =  { 2,    96225.05,     3,    0,    0,    1,    1 },
   ilev_9   =  { 2,    97420.75,    25,    2,    2,    2,    1 },
   ilev_10  =  { 2,    97488.48,    15,    2,    2,    1,    1 },
   ilev_11  =  { 2,    99094.06,    15,    1,    1,    2,    2 },
   ilev_12  =  { 2,    99681.05,     9,    1,    1,    1,    2 },
   ilev_13  =  { 2,   101143.45,    15,    0,    2,    1,    1 },
   ilev_14  =  { 2,   102116.70,     5,    0,    0,    2,    1 },
   ilev_15  =  { 2,   102411.99,     3,    0,    0,    1,    1 },
   ilev_16  =  { 2,   102662.03,     5,    0,    2,    0,    1 },
   ilev_17  =  { 2,   102865.56,    25,    2,    2,    2,    1 },
   ilev_18  =  { 2,   102908.42,    15,    2,    2,    1,    1 },
   ilev_19  =  { 2,   102968.25,    35,    3,    3,    2,    2 },
   ilev_20  =  { 2,   102968.34,    21,    3,    3,    1,    2 },
   ilev_21  =  { 2,   103626.27,    15,    1,    1,    2,    2 },
   ilev_22  =  { 2,   103870.02,     9,    1,    1,    1,    2 },
   ilev_23  =  { 2,   105019.31,     5,    0,    0,    2,    1 },
   ilev_24  =  { 2,   105165.23,     3,    0,    0,    1,    1 },
   ilev_25  =  { 2,   105385.39,    25,    2,    2,    2,    1 },
   ilev_26  =  { 2,   105409.01,    15,    2,    2,    1,    1 },
   ilev_27  =  { 2,   105441.65,    35,    3,    3,    2,    2 },
   ilev_28  =  { 2,   105441.72,    21,    3,    3,    1,    2 },
   ilev_29  =  { 2,   105788.68,    15,    1,    1,    2,    2 },
   ilev_30  =  { 2,   105912.03,     9,    1,    1,    1,    2 },
   ilev_31  =  { 2,   106545.35,     5,    0,    0,    2,    1 },
   ilev_32  =  { 2,   106627.93,     3,    0,    0,    1,    1 },
   ilev_33  =  { 2,   106751.46,    25,    2,    2,    2,    1 },
   ilev_34  =  { 2,   106765.80,    15,    2,    2,    1,    1 },
   ilev_35  =  { 2,   106785.16,    35,    3,    3,    2,    2 },
   ilev_36  =  { 2,   106785.20,    21,    3,    3,    1,    2 },
   ilev_37  =  { 2,   106787.90,    27,   -1,   -1,    1,    1 },
   ilev_38  =  { 2,   106787.90,    45,   -1,   -1,    2,    1 },
   ilev_39  =  { 2,   107446.04,     5,    0,    0,    2,    1 },
   ilev_40  =  { 2,   107497.22,     3,    0,    0,    1,    1 },
   ilev_41  =  { 2,   107573.49,    25,    2,    2,    2,    1 },
   ilev_42  =  { 2,   107582.78,    15,    2,    2,    1,    1 },
   ilev_43  =  { 2,   107595.14,    35,    3,    3,    2,    2 },
   ilev_44  =  { 2,   107595.15,    21,    3,    3,    1,    2 },
   ilev_45  =  { 2,   108021.40,     5,    0,    0,    2,    1 },
   ilev_46  =  { 2,   108056.00,     3,    0,    0,    1,    1 },
   ilev_47  =  { 2,   108106.08,    25,    2,    2,    2,    1 },
   ilev_48  =  { 2,   108114.00,    15,    2,    2,    1,    1 },
   ilev_49  =  { 2,   108412.00,     5,    0,    0,    2,    1 },
   ilev_50  =  { 2,   108436.30,     3,    0,    0,    1,    1 },
   ilev_51  =  { 2,   108470.23,    25,    2,    2,    2,    1 },
   ilev_52  =  { 2,   108476.70,    15,    2,    2,    1,    1 },
   ilev_53  =  { 2,   108705.50,     3,    0,    0,    1,    1 },
   ilev_54  =  { 2,   108731.53,    25,    2,    2,    2,    1 },
   ilev_55  =  { 2,   108736.10,    15,    2,    2,    1,    1 },
   ilev_56  =  { 2,   108906.10,     3,    0,    0,    1,    1 },
   ilev_57  =  { 2,   108927.20,    15,    2,    2,    1,    1 },
   ilev_58  =  { 2,   109056.00,     3,    0,    0,    1,    1 },
   ilev_59  =  { 2,   109073.30,    15,    2,    2,    1,    1 },
   ilev_60  =  { 2,   109171.70,     3,    0,    0,    1,    1 },
   ilev_61  =  { 2,   109186.30,    15,    2,    2,    1,    1 },
   ilev_62  =  { 2,   109265.90,     3,    0,    0,    1,    1 },
   ilev_63  =  { 2,   109279.16,    15,    2,    2,    1,    1 },
   ilev_64  =  { 2,   109341.00,     3,    0,    0,    1,    1 },
   ilev_65  =  { 2,   109348.90,    15,    2,    2,    1,    1 },
   ilev_66  =  { 2,   109402.40,     3,    0,    0,    1,    1 },
   ilev_67  =  { 2,   109409.50,    15,    2,    2,    1,    1 },
   ilev_68  =  { 2,   109454.70,     3,    0,    0,    1,    1 },
   ilev_69  =  { 2,   109457.60,    15,    2,    2,    1,    1 },
   ilev_70  =  { 2,   109497.45,    15,    2,    2,    1,    1 },
   ilev_71  =  { 2,   109499.00,     3,    0,    0,    1,    1 },
   ilev_72  =  { 2,   109533.20,    15,    2,    2,    1,    1 },
   ilev_73  =  { 2,   109533.30,     3,    0,    0,    1,    1 },
   ilev_74  =  { 2,   109561.50,    15,    2,    2,    1,    1 },
   ilev_75  =  { 2,   109562.30,     3,    0,    0,    1,    1 },
   ilev_76  =  { 2,   109589.00,     3,    0,    0,    1,    1 },
   ilev_77  =  { 2,   109589.30,    15,    2,    2,    1,    1 },
   ilev_78  =  { 2,   109610.50,     3,    0,    0,    1,    1 },
   ilev_79  =  { 2,   109610.50,    15,    2,    2,    1,    1 },
   ilev_80  =  { 2,   109630.00,     3,    0,    0,    1,    1 },
   ilev_81  =  { 2,   109630.00,    15,    2,    2,    1,    1 },
   ilev_82  =  { 2,   109647.70,     3,    0,    0,    1,    1 },
   ilev_83  =  { 2,   109647.70,    15,    2,    2,    1,    1 },
   ilev_84  =  { 2,   109661.40,     3,    0,    0,    1,    1 },
   ilev_85  =  { 2,   109661.40,    15,    2,    2,    1,    1 },
   ilev_86  =  { 2,   109673.50,     3,    0,    0,    1,    1 },
   ilev_87  =  { 2,   109673.50,    15,    2,    2,    1,    1 },
   ilev_88  =  { 2,   109686.20,     3,    0,    0,    1,    1 },
   ilev_89  =  { 2,   109686.20,    15,    2,    2,    1,    1 },
   ilev_90  =  { 2,   109695.90,     3,    0,    0,    1,    1 },
   ilev_91  =  { 2,   109695.90,    15,    2,    2,    1,    1 },
   ilev_92  =  { 2,   109705.40,     3,    0,    0,    1,    1 },
   ilev_93  =  { 2,   109705.40,    15,    2,    2,    1,    1 },
   ilev_94  =  { 2,   109713.70,     3,    0,    0,    1,    1 },
   ilev_95  =  { 2,   109713.70,    15,    2,    2,    1,    1 },
   ilev_96  =  { 2,   113204.45,     3,    1,    1,    0,    2 },
   ilev_97  =  { 2,   113295.53,    15,    1,    2,    1,    2 },
   ilev_98  =  { 2,   113719.80,    21,    1,    3,    1,    2 },
   ilev_99  =  { 2,   113916.28,     9,    0,    1,    1,    1 },
   ilev_100  =  { 2,   113996.24,     7,    1,    3,    0,    2 },
   ilev_101  =  { 2,   115918.14,     3,    0,    1,    0,    1 },
   ilev_102  =  { 2,   116631.09,     5,    1,    2,    0,    2 },
   ilev_103  =  { 2,   122428.46,    15,    0,    2,    1,    1 },
   ilev_104  =  { 2,   122797.66,     5,    0,    2,    0,    1 },
   ilev_105  =  { 2,   123326.42,     9,    2,    1,    1,    1 },
   ilev_106  =  { 2,   124217.92,    21,    2,    3,    1,    1 },
   ilev_107  =  { 2,   124242.58,     1,    2,    0,    0,    1 },
   ilev_108  =  { 2,   124242.95,    27,    2,   -1,    1,    1 },
   ilev_109  =  { 2,   124254.01,    15,    2,    2,    1,    1 },
   ilev_110  =  { 2,   124258.78,     9,    2,   -1,    0,    1 },
   ilev_111  =  { 2,   124274.00,     3,    2,    1,    0,    1 },
   ilev_112  =  { 2,   124319.18,     5,    2,    2,    0,    1 },
   ilev_113  =  { 2,   124326.78,     7,    2,    3,    0,    1 },
   ilev_114  =  { 2,   124336.30,     3,    2,    0,    1,    1 },
   ilev_115  =  { 2,   125778.46,    15,    1,    2,    1,    2 },
   ilev_116  =  { 2,   126304.32,     9,   -1,    1,    1,    1 },
   ilev_117  =  { 2,   127286.34,    15,    1,    2,    1,    2 },
   ilev_118  =  { 2,   127667.75,     3,    1,    1,    0,    2 },
   ilev_119  =  { 2,   128594.92,     5,    1,    2,    0,    2 },
   ilev_120  =  { 2,   128986.48,    15,    0,    2,    1,    1 },
   ilev_121  =  { 2,   129132.32,     5,    0,    2,    0,    1 },
   ilev_122  =  { 2,   129666.91,    21,    2,    3,    1,    1 },
   ilev_123  =  { 2,   129682.53,     1,    2,    0,    0,    1 },
   ilev_124  =  { 2,   129683.00,     3,    2,    1,    0,    1 },
   ilev_125  =  { 2,   129683.66,    27,    2,   -1,    1,    1 },
   ilev_126  =  { 2,   129696.17,    15,    2,    2,    1,    1 },
   ilev_127  =  { 2,   129699.52,     9,    2,   -1,    0,    1 },
   ilev_128  =  { 2,   129731.00,     5,    2,    2,    0,    1 },
   ilev_129  =  { 2,   129736.60,     3,    2,    0,    1,    1 },
   ilev_130  =  { 2,   129737.05,     7,    2,    3,    0,    1 },
   ilev_131  =  { 2,   129777.94,    27,    3,   -1,    1,    2 },
   ilev_132  =  { 2,   129779.92,    33,    3,   -1,    1,    2 },
   ilev_133  =  { 2,   129799.83,    11,    3,   -1,    0,    2 },
   ilev_134  =  { 2,   129974.75,     9,    2,    1,    1,    1 },
   ilev_135  =  { 2,   130942.92,     1,    1,    0,    0,    2 },
   ilev_136  =  { 2,   131862.49,    15,    0,    2,    1,    1 },
   ilev_137  =  { 2,   131936.00,     5,    0,    2,    0,    1 },
   ilev_138  =  { 2,   132190.67,    21,    2,    3,    1,    1 },
   ilev_139  =  { 2,   132198.24,    27,    2,   -1,    1,    1 },
   ilev_140  =  { 2,   132203.00,     3,    2,    1,    0,    1 },
   ilev_141  =  { 2,   132209.81,    15,    2,    2,    1,    1 },
   ilev_142  =  { 2,   132217.68,     9,    2,   -1,    0,    1 },
   ilev_143  =  { 2,   132232.60,     3,    2,    0,    1,    1 },
   ilev_144  =  { 2,   132235.00,     5,    2,    2,    0,    1 },
   ilev_145  =  { 2,   132240.00,     7,    2,    3,    0,    1 },
   ilev_146  =  { 2,   132313.01,     9,    2,    1,    1,    1 },
   ilev_147  =  { 2,   133376.88,    15,    0,    2,    1,    1 },
   ilev_148  =  { 2,   133421.00,     5,    0,    2,    0,    1 },
   ilev_149  =  { 2,   133566.80,    15,    2,    2,    1,    1 },
   ilev_150  =  { 2,   133569.00,     3,    2,    1,    0,    1 },
   ilev_151  =  { 2,   133577.90,     3,    2,    0,    1,    1 },
   ilev_152  =  { 2,   133587.00,     5,    2,    2,    0,    1 },
   ilev_153  =  { 2,   133591.00,     7,    2,    3,    0,    1 },
   ilev_154  =  { 2,   133623.69,     9,    2,    1,    1,    1 },
   ilev_155  =  { 2,   134271.96,    15,    0,    2,    1,    1 },
   ilev_156  =  { 2,   134305.00,     5,    0,    2,    0,    1 },
   ilev_157  =  { 2,   134385.00,    15,    2,    2,    1,    1 },
   ilev_158  =  { 2,   134387.00,     3,    2,    1,    0,    1 },
   ilev_159  =  { 2,   134402.50,     3,    2,    0,    1,    1 },
   ilev_160  =  { 2,   134409.00,     5,    2,    2,    0,    1 },
   ilev_161  =  { 2,   134409.00,     7,    2,    3,    0,    1 },
   ilev_162  =  { 2,   134423.31,     9,    2,    1,    1,    1 },
   ilev_163  =  { 2,   134840.96,    15,    0,    2,    1,    1 },
   ilev_164  =  { 2,   134869.00,     5,    0,    2,    0,    1 },
   ilev_165  =  { 2,   134919.20,    15,    2,    2,    1,    1 },
   ilev_166  =  { 2,   134919.20,     3,    2,    0,    1,    1 },
   ilev_167  =  { 2,   134921.00,     3,    2,    1,    0,    1 },
   ilev_168  =  { 2,   134940.00,     5,    2,    2,    0,    1 },
   ilev_169  =  { 2,   134940.00,     7,    2,    3,    0,    1 },
   ilev_170  =  { 2,   134945.04,     9,    2,    1,    1,    1 },
   ilev_171  =  { 2,   135226.70,    15,    0,    2,    1,    1 },
   ilev_172  =  { 2,   135252.00,     5,    0,    2,    0,    1 },
   ilev_173  =  { 2,   135283.70,    15,    2,    2,    1,    1 },
   ilev_174  =  { 2,   135283.70,     3,    2,    0,    1,    1 },
   ilev_175  =  { 2,   135285.00,     3,    2,    1,    0,    1 },
   ilev_176  =  { 2,   135304.00,     5,    2,    2,    0,    1 },
   ilev_177  =  { 2,   135304.00,     7,    2,    3,    0,    1 },
   ilev_178  =  { 2,   135304.06,     9,    2,    1,    1,    1 },
   ilev_179  =  { 2,   135502.30,    15,    0,    2,    1,    1 },
   ilev_180  =  { 2,   135541.70,    15,    2,    2,    1,    1 },
   ilev_181  =  { 2,   135541.70,     3,    2,    0,    1,    1 },
   ilev_182  =  { 2,   135542.00,     3,    2,    1,    0,    1 },
   ilev_183  =  { 2,   135561.01,     8,    2,    1,    1,    1 },
   ilev_184  =  { 2,   135565.00,     5,    2,    2,    0,    1 },
   ilev_185  =  { 2,   135565.00,     7,    2,    3,    0,    1 },
   ilev_186  =  { 2,   135681.70,     9,    0,    1,    1,    1 },
   ilev_187  =  { 2,   135701.80,    15,    0,    2,    1,    1 },
   ilev_188  =  { 2,   135723.00,     5,    0,    2,    0,    1 },
   ilev_189  =  { 2,   135732.40,    15,    2,    2,    1,    1 },
   ilev_190  =  { 2,   135732.40,     3,    2,    0,    1,    1 },
   ilev_191  =  { 2,   135736.00,     3,    2,    1,    0,    1 },
   ilev_192  =  { 2,   135752.45,     9,    2,    1,    1,    1 },
   ilev_193  =  { 2,   135755.00,     5,    2,    2,    0,    1 },
   ilev_194  =  { 2,   135755.00,     7,    2,    3,    0,    1 },
   ilev_195  =  { 2,   135852.60,    15,    2,    2,    1,    1 },
   ilev_196  =  { 2,   135876.40,    15,    2,    2,    1,    1 },
   ilev_197  =  { 2,   135876.40,     3,    2,    0,    1,    1 },
   ilev_198  =  { 2,   135887.00,     3,    2,    1,    0,    1 },
   ilev_199  =  { 2,   135898.27,     9,    2,    1,    1,    1 },
   ilev_200  =  { 2,   135902.00,     5,    2,    2,    0,    1 },
   ilev_201  =  { 2,   135902.00,     7,    2,    3,    0,    1 },
   ilev_202  =  { 2,   135986.40,    15,    2,    2,    1,    1 },
   ilev_203  =  { 2,   135986.40,     3,    2,    0,    1,    1 },
   ilev_204  =  { 2,   136000.00,     5,    0,    2,    0,    1 },
   ilev_205  =  { 2,   136000.00,     3,    2,    1,    0,    1 },
   ilev_206  =  { 2,   136011.26,     9,    2,    1,    1,    1 },
   ilev_207  =  { 2,   136071.30,    15,    2,    2,    1,    1 },
   ilev_208  =  { 2,   136071.30,     3,    2,    0,    1,    1 },
   ilev_209  =  { 2,   136085.00,     3,    2,    1,    0,    1 },
   ilev_210  =  { 2,   136100.10,     9,    2,    1,    1,    1 },
   ilev_211  =  { 2,   136138.90,    15,    2,    2,    1,    1 },
   ilev_212  =  { 2,   136138.90,     3,    2,    0,    1,    1 },
   ilev_213  =  { 2,   136171.50,     9,    2,    1,    1,    1 },
   ilev_214  =  { 2,   136194.40,    15,    2,    2,    1,    1 },
   ilev_215  =  { 2,   136194.40,     3,    2,    0,    1,    1 },
   ilev_216  =  { 2,   136242.20,     9,    2,    1,    1,    1 },
   ilev_217  =  { 2,   136353.00,     3,    0,    1,    0,    1 },
   ilev_218  =  { 2,   137928.00,     5,    2,    2,    0,    1 },
   ilev_219  =  { 2,   137946.50,     9,    2,    1,    1,    1 },
   ilev_220  =  { 2,   137962.50,    15,    2,    2,    1,    1 },
   ilev_221  =  { 2,   137981.00,     3,    2,    1,    0,    1 },
   ilev_222  =  { 2,   142650.50,     9,    0,    1,    1,    1 },
   ilev_223  =  { 2,   142743.00,     3,    0,    1,    0,    1 },
   ilev_224  =  { 2,   143359.00,     5,    2,    2,    0,    1 },
   ilev_225  =  { 2,   143363.40,    15,    2,    2,    1,    1 },
   ilev_226  =  { 2,   143363.40,     9,    2,    1,    1,    1 },
   ilev_227  =  { 2,   143384.00,     3,    2,    1,    0,    1 },
   ilev_228  =  { 2,   145516.50,     9,    0,    1,    1,    1 },
   ilev_229  =  { 2,   145620.00,     3,    0,    1,    0,    1 },
   ilev_230  =  { 2,   145868.00,     5,    2,    2,    0,    1 },
   ilev_231  =  { 2,   145870.50,     9,    2,    1,    1,    1 },
   ilev_232  =  { 2,   145870.50,    15,    2,    2,    1,    1 },
   ilev_233  =  { 2,   145887.00,     3,    2,    1,    0,    1 },
   ilev_234  =  { 2,   147028.70,     9,    0,    1,    1,    1 },
   ilev_235  =  { 2,   147057.00,     3,    0,    1,    0,    1 },
   ilev_236  =  { 2,   147229.00,     5,    2,    2,    0,    1 },
   ilev_237  =  { 2,   147230.10,     9,    2,    1,    1,    1 },
   ilev_238  =  { 2,   147230.10,    15,    2,    2,    1,    1 },
   ilev_239  =  { 2,   147240.00,     3,    2,    1,    0,    1 },
   ilev_240  =  { 2,   147921.10,     9,    0,    1,    1,    1 },
   ilev_241  =  { 2,   147942.00,     3,    0,    1,    0,    1 },
   ilev_242  =  { 2,   148045.00,     5,    2,    2,    0,    1 },
   ilev_243  =  { 2,   148047.70,     9,    2,    1,    1,    1 },
   ilev_244  =  { 2,   148047.70,    15,    2,    2,    1,    1 },
   ilev_245  =  { 2,   148058.00,     3,    2,    1,    0,    1 },
   ilev_246  =  { 2,   148495.50,     9,    0,    1,    1,    1 },
   ilev_247  =  { 2,   148505.00,     3,    0,    1,    0,    1 },
   ilev_248  =  { 2,   148576.90,     9,    2,    1,    1,    1 },
   ilev_249  =  { 2,   148576.90,    15,    2,    2,    1,    1 },
   ilev_250  =  { 2,   148578.00,     5,    2,    2,    0,    1 },
   ilev_251  =  { 2,   148582.00,     3,    2,    1,    0,    1 },
   ilev_252  =  { 2,   148882.90,     9,    0,    1,    1,    1 },
   ilev_253  =  { 2,   148891.00,     3,    0,    1,    0,    1 },
   ilev_254  =  { 2,   148941.00,     5,    2,    2,    0,    1 },
   ilev_255  =  { 2,   148945.40,    15,    2,    2,    1,    1 },
   ilev_256  =  { 2,   148945.40,     9,    2,    1,    1,    1 },
   ilev_257  =  { 2,   148946.00,     3,    2,    1,    0,    1 },
   ilev_258  =  { 2,   149159.10,     9,    0,    1,    1,    1 },
   ilev_259  =  { 2,   149168.00,     3,    0,    1,    0,    1 },
   ilev_260  =  { 2,   149200.60,     9,    2,    1,    1,    1 },
   ilev_261  =  { 2,   149200.60,    15,    2,    2,    1,    1 },
   ilev_262  =  { 2,   149203.00,     5,    2,    2,    0,    1 },
   ilev_263  =  { 2,   149359.40,     9,    0,    1,    1,    1 },
   ilev_264  =  { 2,   149390.60,     9,    2,    1,    1,    1 },
   ilev_265  =  { 2,   149390.60,    15,    2,    2,    1,    1 },
   ilev_266  =  { 2,   149392.00,     5,    2,    2,    0,    1 },
   ilev_267  =  { 2,   149514.40,     9,    0,    1,    1,    1 },
   ilev_268  =  { 2,   149539.40,    15,    2,    2,    1,    1 },
   ilev_269  =  { 2,   149539.40,     9,    2,    1,    1,    1 },
   ilev_270  =  { 2,   149631.80,     9,    0,    1,    1,    1 },
   ilev_271  =  { 2,   149652.20,     9,    2,    1,    1,    1 },
   ilev_272  =  { 2,   149652.20,    15,    2,    2,    1,    1 },
   ilev_273  =  { 2,   149744.90,     9,    2,    1,    1,    1 },
   ilev_274  =  { 2,   149744.90,    15,    2,    2,    1,    1 },
   ilev_275  =  { 2,   149815.60,     9,    2,    1,    1,    1 },
   ilev_276  =  { 2,   149815.60,    15,    2,    2,    1,    1 },
   ilev_277  =  { 2,   149923.70,     9,    2,    1,    1,    1 },
   ilev_278  =  { 2,   149923.70,    15,    2,    2,    1,    1 },
   ilev_279  =  { 2,   149961.50,     9,    2,    1,    1,    1 },
   ilev_280  =  { 2,   149961.50,    15,    2,    2,    1,    1 },
   ilev_281  =  { 2,   150000.80,     9,    2,    1,    1,    1 },
   ilev_282  =  { 2,   150000.80,    15,    2,    2,    1,    1 },
   -- ===========================================================
}
O.reduced_electronic_levels = {
   n_levels = 32,
   ref = 'NIST ASD: http://physics.nist.gov/PhysRefData/ASD/index.html',
   comments = 'Johnstons grouping of high lying states',
   -- ===========================================================
   --   No.    n      E(cm-1)      g     l     L     S    parity 
   -- ===========================================================
   ilev_0  = { 2,       77.97,     9,    1,    1,    1,    2 },
   ilev_1  = { 2,    15867.86,     5,    1,    2,    0,    2 },
   ilev_2  = { 2,    33792.58,     1,    1,    0,    0,    2 },
   ilev_3  = { 3,    73768.20,     5,    0,    0,    2,    1 },
   ilev_4  = { 3,    76794.98,     3,    0,    0,    1,    1 },
   ilev_5  = { 3,    86629.09,    15,    1,    1,    2,    2 },
   ilev_6  = { 3,    88630.98,     9,    1,    1,    1,    2 },
   ilev_7  = { 4,    95476.73,     5,    0,    0,    2,    1 },
   ilev_8  = { 4,    96225.05,     3,    0,    0,    1,    1 },
   ilev_9  = { 3,    97420.75,    25,    2,    2,    2,    1 },
   ilev_10 = { 3,    97488.48,    15,    2,    2,    1,    1 },
   ilev_11 = { 4,    99094.06,    15,    1,    1,    2,    2 },
   ilev_12 = { 4,    99681.05,     9,    1,    1,    1,    2 },
   ilev_13 = { 3,   101143.45,    15,    0,    2,    1,    1 },
   ilev_14 = { 5,   102116.70,     5,    0,    0,    2,    1 },
   ilev_15 = { 5,   102411.99,     3,    0,    0,    1,    1 },
   ilev_16 = { 3,   102662.03,     5,    0,    2,    0,    1 },
   ilev_17 = { 4,   102865.56,    25,    2,    2,    2,    1 },
   ilev_18 = { 4,   102908.42,    15,    2,    2,    1,    1 },
   ilev_19 = { 4,   102968.25,    35,    3,    3,    2,    2 },
   ilev_20 = { 4,   102968.34,    21,    3,    3,    1,    2 },
   ilev_21 = { 5,   103626.27,    15,    1,    1,    2,    2 },
   ilev_22 = { 5,   103870.02,     9,    1,    1,    1,    2 },
   ilev_23 = { 5,   105385.39,    25,    2,    2,    2,    1 },
   ilev_24 = { 5,   105409.01,    15,    2,    2,    1,    1 },
   ilev_25 = { 5,   105441.65,    35,    3,    3,    2,    2 },
   ilev_26 = { 5,   105441.72,    21,    3,    3,    1,    2 },
   ilev_27 = { 6,   106639.00,   288,   -1,   -1,   -1,   -1 },
   ilev_28 = { 7,   107583.00,   392,   -1,   -1,   -1,   -1 },
   ilev_29 = { 8,   108117.00,   512,   -1,   -1,   -1,   -1 },
   ilev_30 = { 9,   108478.00,   648,   -1,   -1,   -1,   -1 },
   ilev_31 = { 10,  108734.00,   800,   -1,   -1,   -1,   -1 },
   -- ===========================================================
}
  
