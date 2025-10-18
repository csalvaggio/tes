FUNCTION BB_RADIANCE, absoluteTemperature, wavelength

  IF ( N_ELEMENTS( wavelength ) EQ 0 ) THEN BEGIN
    MESSAGE, "You must provide a wavelength or an array of wavelengths", LEVEL=0
  ENDIF

  T = DOUBLE( absoluteTemperature )
  lambda = DOUBLE( wavelength )

  c1 = 3.74151e08  ; W / m^2 / micron
  c2 = 1.43879e04  ; micron K
  M = c1 / lambda^5 / ( EXP( c2 / lambda / T ) - 1 )
  L = M / !DPI     ; W / m^2 / sr / micron

  RETURN, L

END