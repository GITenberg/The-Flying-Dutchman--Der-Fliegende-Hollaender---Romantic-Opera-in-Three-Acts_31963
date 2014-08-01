\version "2.10.25" 
\include "english.ly"

  upper = \relative c'' { 
  \clef treble 
  \key e \major 
  \time 2/2

  <<e2 e'>> <<ds,4. ds'>> <<cs,8 cs'>> |
  <<cs,2 cs'>> \acciaccatura {ds16[ cs]} <<b,4. b'>> <<as,8 as'>> |
  <<cs,4. cs'>> <<b,8 b'>> <<fs4. fs'>> <<e,8 e'>> |
  <<e,2 e'>> <<ds,4 ds'>> r4 |
  <<a,2 a'>> <<b,4. b'>> <<cs,8 cs'>> |

  % page 4

  <<cs,2 cs'>> <<fs,,4. fs'>> <<e,8 e'>> |
  <<ds,2 ds'>> <<cs4. cs'>> <<b,8 b'>> |

  <<a,2 a'>> <<gs,4 gs'>> r4 | <<e2 e'>> <<ds,4. ds'>> <<cs,8 cs'>> |
  <<cs,2 cs'>> \acciaccatura {ds16[ cs]} <<b,4. b'>> <<as,8 as'>> |
  <<cs,4. cs'>> <<b,8 b'>> <<fs4. fs'>> <<e,8 e'>> |
  <<e,2 e'>> <<ds,4 ds'>> r4 |
  <<a,2 a'>> <<b,4. b'>> <<cs,8 cs'>> |
  <<cs,2 cs'>> <<fs,,4. fs'>> <<e,8 e'>> |
  <<ds,2 ds'>> <<cs4. cs'>> <<b,8 b'>> |

  <<gs,2~ gs'~>> <<gs,8 gs'>> b e gs | <<gs,1~ bs~ ds~ gs~>> |
  <<gs,4~ bs!~ ds~ gs~>> <<fs, fs'>> <<e,4. e'>> <<ds,8 ds'>> |
  <<ds,1~ gs~ ds'~>> |
  <<ds,4~ gs~ ds'~>> <<cs, cs'>> <<fs,4. fs'>> <<e,8 e'>> |
  <<a,1~ cs~ fs~ a~>> |
  <<a,4 cs fs a>> <<gs, gs'>> <<fs,4. fs'>> <<e,8 e'>> |
  <<e,1~ g~ cs~ e~>> |
  <<e,4 g! cs e>> <<ds, ds'>> <<e,4. e'>> <<cs,8 cs'>> |
  <<b,1 e gs! b>> | <<e,2 gs b e>> <<gs, b e gs>> |
  <<fs,8 b>> ds, <<b' ds>> fs, <<ds' fs>> fs, <<b ds>> fs, |
  <<fs'8 a>> b, <<b ds fs>> b, <<ds fs b>> b, ds b |
  <<e,4 gs b e>> r4 r2 | <<gs,4 b e gs>> r4 r2 | <<e,4 gs b e>> r4 r2 |
  <<gs,4 b e gs>> r4 r2 | <<e,4 gs b e>> r4 r2 \bar "||"

  }


  lower = \relative c, { 
  \clef bass 
  \key e \major 
  \time 2/2 

  <<e8 e'>> e[ gs b] e[ b gs e] | <<e,8 e'>> e[ gs b] e[ b gs e] |
  <<e,8 e'>> e[ gs b] e[ b gs e] |
  <<b,8 b'>> b[ fs' a] b[ a fs ds] | <<b,8 b'>> b[ fs' a] b[ a fs ds] |

  % page 4

  <<b,8 b'>> b[ ds fs] a[ fs ds b] | <<b, b'>> b[ ds fs] a[ fs ds b] |

  <<e,8 e'>> e[ gs b] e[ b gs e] | <<e,8 e'>> e[ gs b] e[ b gs e] |
  <<e,8 e'>> e[ gs b] e[ b gs e] | <<e,8 e'>> e[ gs b] e[ b gs e] |
  <<b,8 b'>> b[ fs' a] b[ a fs ds] | <<b,8 b'>> b[ fs' a] b[ a fs ds] |
  <<b,8 b'>> b[ ds fs] a[ fs ds b] | <<b, b'>> b[ ds fs] a[ fs ds b] |

  <<e,8 e'>> e[ gs b] e[ b gs e] |
  <<gs,1~ bs~ ds~ gs~>> | <<gs,2~ bs!~ ds~ gs~>> <<gs,4 bs ds gs>> r4 |
  <<cs,1~ e~ gs~>> | <<cs,2~ e~ gs~>> <<cs,4 e gs>> r4 |
  <<a,1~ cs~ fs~ a~>> | <<a,2~ cs~ fs~ a~>> <<a,4 cs fs a>> r4 |
  <<as,1~ cs~ e~ g~>> | <<as,!2~ cs~ e~ g!~>> <<as,4 cs e g>> r4 |
  <<e,1 gs b>> | <<gs2 b e gs>> <<e, gs b e>> |
  \repeat "tremolo" 4 { <<b,16 ds fs>> b}
    \repeat "tremolo" 4 { <<b,16 ds fs>> b} |
  \repeat "tremolo" 4 { <<b,16 ds fs>> b}
    \repeat "tremolo" 4 { <<b,16 ds fs>> b} |
  <<cs,8 cs'>> ds e b e ds e b | <<cs,8 cs'>> ds e b e ds e b |
  <<cs,8 cs'>> ds e b e ds e b | <<cs,8 cs'>> ds e b e ds e b |
  <<cs,4 cs'>> r4 r2
  } 

\header
  {title = \markup \bold
    {Grand Duo.}
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
}

\score {
  \unfoldRepeats   << 
    \new PianoStaff << 
    \new Staff = "upper" \upper 
    \new Staff = "lower" \lower 
    >> 
  >> 

  \midi
    { 
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 130 4) } 
    }
}

