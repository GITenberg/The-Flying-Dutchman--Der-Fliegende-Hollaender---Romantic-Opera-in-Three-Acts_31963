\version "2.10.25" 
\include "english.ly"

  upper = \relative c' { 
  \clef treble 
  \key a \major 
  \time 2/4

  << { \stemUp e8..[ fs32 e8.. fs32] | e8 fs16 gs a8 cs } \\
  { cs,4 d | cs r8 a' } >> |
  \stemDown <<cs8. e>> fs16 <<gs,8. e'>> fs16 |
  <<cs8. e>> cs16 a16 cs, e a | 

  << { b8 <<d fs>> <<d fs>> <<d fs>> | <<d4. fs>> <<b,16 d>> <<cs e>> |
    <<d8 fs>> d16 cs } \\
  { gs4 gs | gs gs~ | gs16 a b a } >>
  <<gs8 b>> <<gs b e>> | <<a,8 cs>>
  << { a8 gs fs | e8.. fs32 e8.. fs32 } \\
  { cs8 d4 | cs d } >> |

  % page 2

  << { e8 fs16 gs a8 cs } \\ { cs,4 r8 a' } >> |
  <<cs8..[ e>> fs32 <<gs,8.. e'>> fs32] | <<cs8.. e>> cs32 cs16 cs, e a |
  << { fs8[ <<a cs>> <<a cs>> <<a] cs>> |
  <<a4. cs>> <<fs,16 a>> <<gs16 b>> |
  <<a8 cs>> a16 gs } \\
  { ds4 <<ds fs>> | <<ds fs>> ds~ | ds16 e fs e } >>
  \stemUp <<ds8 fs>> <<ds fs b>> |
  e,4 \acciaccatura {fs16[ e]} ds16 e a cs |
  e8 <<a, cs e>> <<fs, a ds>> <<fs, a ds>> | 
  << \stemUp { \acciaccatura e8 d!16 cs d fs } \\ { gs,4 } >>
  <<a8 cs e>> cs |

  <<a8. cs fs>> <<a,16 cs fs>> <<gs,8 cs es>> cs |
  <<a8. d fs>> <<a,16 d fs>> <<a,8 cs e>> a,16[ b] |
  <<a8 cs>> <<a cs>> <<a c ds>> <<a c ds>> |
  << { \stemUp \acciaccatura fs16 \stemUp e16 ds e fs } \\
  { << \stemDown a,8. c>> <<a16 c>> } >>
  <<b8 g'>> b, |
  <<b8. e g>> <<b,16 e g>> <<b,8 ds fs>> <<fs, b ds>> |
  << { \acciaccatura ds16 \stemUp cs16 bs cs ds } \\ { <<e,4 as>> } >>
  <<ds,16 b'>> fs <<fs b>> <<b d>> |
  <<d4 fs>> <<d fs>> | <<d2 fs>> |

  % page 3

  << {r8 <<gs,16 b>> <<a cs>> <<b8 d>> <<gs, e'>>} \\ {e,2} >> |
  <<cs'8.. e>> fs32 <<fss,8.. e'>> <<e,32 ds'>> |

  << { e8[ d \acciaccatura d8 cs b] } \\ { gs2 } \\
    { \stemDown r8 e r e }>> |
  << { e'8..[ fs32 fs8.. ds32] } \\ { fss,8[ e gs e] } >> |
  << {fs'8[ e \acciaccatura e8 d cs] } \\ { a2 } \\
    { \stemDown r8 e r e} >> |
  << { e'8..[ ds32 e8.. es32] } \\ { gs,8[ e cs' a] } >> |

   <<a8[ gs'>> <<as, fs'>> \acciaccatura e8 <<b d>> <<d,] b'>> |
  << {a8[ fs' <<b, e>> gs,] } \\ {cs,4 d} >> | <<cs4 a'>> r8 \bar "||"
  } 

  lower = \relative c { 
  \clef bass 
  \key a \major 
  \time 2/4 

  << {a8\noBeam as b\noBeam e, | a\noBeam e cs'\noBeam e, |
    a\noBeam gs! b\noBeam e, | a\noBeam e cs'\noBeam e, | }  \\
  {\times 2/3 {a16[ ds e]} \times 2/3 {as,16[ ds e]}
    \times 2/3 {b16 ds e} \times 2/3 {e,16[ ds' e]} |
  \times 2/3 {a,16 ds e} \times 2/3 {e,16[ ds' e]}
    \times 2/3 {cs16 ds e} \times 2/3 {e,16[ ds' e]} |
  \times 2/3 {a,16 ds e} \times 2/3 {gs,!16[ ds' e]}
    \times 2/3 {b16 ds e} \times 2/3 {e,16[ ds' e]} |
  \times 2/3 {a,16 ds e} \times 2/3 {e,16[ ds' e]}
    \times 2/3 {cs16 ds e} \times 2/3 {e,16[ ds' e]} }  >>

  << {a,4 a | a a a a a a |  a8\noBeam as b\noBeam e,} \\
  {\times 4/6 {a16 e' ds e ds e} \times 4/6 {a,16 e' ds e ds e} |
  \times 4/6 {a,16 e' ds e ds e} \times 4/6 {a,16 e' ds e ds e} |
  \times 4/6 {a,16 e' ds e ds e} \times 4/6 {a,16 e' ds e ds e} |
  \times 4/6 {a,16 e' ds e ds e} \times 4/6 {a,16 e' ds e ds e} |
  \times 2/3 {a,16 ds e} \times 2/3 {as,16[ ds e]}
   \times 2/3 {b16 ds e} \times 2/3 {e,16[ ds' e]} }>>

  % page 2

  << { a,8 e\noBeam cs' e,\noBeam | a8 gs\noBeam b e,\noBeam |
  a8 e\noBeam cs' e,\noBeam | 
  b'4 b | b4 b | b4 b | e,4 e | a4 b | e4 a} \\
  {\times 2/3 {a,16[ ds e]} \times 2/3 {e,16 ds' e}
    \times 2/3 {cs16[ ds e]} \times 2/3 {e,16 ds' e} |
  \times 2/3 {a,16[ ds e]} \times 2/3 {gs, ds' e}
    \times 2/3 {b16[ ds e]} \times 2/3 {e,16 ds' e} |
  \times 2/3 {a,16[ ds e]} \times 2/3 {e,16 ds' e}
    \times 2/3 {cs16[ ds e]} \times 2/3 {e,16 ds' e} |
  \times 4/6 {b16 fs' ds fs ds fs} \times 4/6 {b,16 fs' ds fs ds fs} |
  \times 4/6 {b,16 fs' ds fs ds fs} \times 4/6 {b,16 fs' ds fs ds fs} |
  \times 4/6 {b,16 fs' ds fs ds fs} \times 4/6 {b,16 fs' ds fs ds fs} |
  \times 4/6 {e,16 e' ds e ds e} \times 4/6 {e,16 e' d cs ds e} |
  \times 4/6 {a,16 ds e ds e a} \times 4/6 {b,16 fs' ds b' fs d} |
  \times 4/6 {e16 gs b gs b d} \times 2/3 {a16[ e' cs]}
    \times 2/3 {a16 bs cs} } >>

  \times 2/3 {<<fs,16 a>> bs cs} \times 2/3 {fs,16[ bs cs]}
    \times 2/3 {cs,16 bs' cs} \times 2/3 {cs,[ bs' cs]} |
  \times 2/3 {<<d, fs>> gs a} \times 2/3 {d,[ gs a]}
    \times 2/3 {a, gs' a} \times 2/3 {a,[ gs' a]}  |

  \times 4/6 {fs gs a fs gs a} \times 4/6 {f gs a f gs a} |
  \times 2/3 {e gs a} \times 2/3 {e[ a d,]}
    \times 2/3 {g cs d} \times 2/3 {g,[ as b]} |
  \times 4/6 {g as b e, as b}
    \times 2/3 {b, as' b} \times 2/3 {b,[ b' b]} |
  \times 2/3 {fs es fs} \times 2/3 {fs,[ es' fs]} b,8 r8 |
  r2 | r2 |

  % page 3

  << { \times 4/6 {e,16 e' ds e ds e} \times 4/6 {e, e' ds e ds e} |
  \times 4/6 {a, e' ds e ds e} \times 4/6 {as, e' ds e ds e} |
  \times 4/6 {b e ds e ds e} \times 4/6 {e, e' ds e ds e} |
  \times 4/6 {as, e' ds e ds e} \times 4/6 {b e ds e ds e} |
  \times 4/6 {cs e ds e ds e} \times 4/6 {e, e' ds e ds e} |
  \times 4/6 {bs e ds e ds e} \times 4/6 {cs a' gs a gs a} |
  \times 4/6 {b, fs' es fs es fs} \times 4/6 {b, fs' es fs es fs} } \\
  { e,4 e | a as | b e, | as b | cs e, | bs' cs | b b } >> |

  \times 4/6 {e16 ds e ds e ds} \times 4/6 {e,16 e' ds e ds e} |
  a,4 r8 \bar "||"
  } 

\header
  {title = \markup \bold
    {Spinning Chorus.}
  }

\score { 
<< 
  \new PianoStaff << 
    \new Staff = "upper" \upper 
    \new Staff = "lower" \lower 
  >> 
>> 
  \layout {
    \context { \RemoveEmptyStaffContext }
    \context { \Score
               \remove Bar_number_engraver
    }
  }
  \midi
    { 
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 60 4) } 
    }
}
