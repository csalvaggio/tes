;+
; :NAME:
;    BB_RADIANCE
;
; :PURPOSE:
;    This function will return either the spectral radiance at a specific
;    wavelength or the spectral radiances at a discrete set of wavelengths
;    in an array for a provided absolute temperature.
;
; :CATEGORY:
;    Radiometry
;
; :CALLING SEQUENCE:
;    Result = BB_RADIANCE( absoluteTemperature, wavelength )
;
; :INPUTS:
;    absoluteTemperature
;       A scalar indicating the absolute temperature for
;       which you would like to compute the spectral or
;       spectrally-integrated radiance [K].
;    wavelength
;       A scalar or array variable containing the wavelength
;       or wavelengths for which you would like to compute
;       the blackbody radiance [microns].
;
; :KEYWORD PARAMETERS:
;    NONE
;
; :RETURN VALUE:
;    Result will contain the spectral or blackbody radiance
;
; :SIDE EFFECTS:
;    NONE
;
; :MODIFICATION HISTORY:
;    Written by:       Carl Salvaggio
;    December, 2008    Original code
;
; :DISCLAIMER:
;    This source code is provided "as is" and without warranties as to
;    performance or merchantability. The author and/or distributors of
;    this source code may have made statements about this source code.
;    Any such statements do not constitute warranties and shall not be
;    relied on by the user in deciding whether to use this source code.
;
;    This source code is provided without any express or implied warranties
;    whatsoever. Because of the diversity of conditions and hardware under
;    which this source code may be used, no warranty of fitness for a
;    particular purpose is offered. The user is advised to test the source
;    code thoroughly before relying on it. The user must assume the entire
;    risk of using the source code.
;-

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