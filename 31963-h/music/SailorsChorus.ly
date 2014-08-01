\version "2.10.25" 
\include "english.ly"

global = {
  \key c \major 
  \time 2/4
  }

  upper = \relative c'' { 
  \clef treble 

  <<g16 c e>> <<g, b d>> <<e, g c>> r16 <<g4~ c~ e~>> |
  <<g,8 c e>> <<g, b d>> <<e, g c>> r8 |
  <<g16 b f'>> <<g, c e>> <<g, b d>> r16 <<g,4~ b~ f'~>> |
  <<g,8 b f'>> <<g, c e>> <<g, b d>> r8 |
  <<c8. e g>> \times 2/3 {fs32 g a} <<e8. g>> \times 2/3 {fs32 g a} |
  <<e8. g>> \times 2/3 {fs32 g a} <<e16 g>> g, <<g c>> <<g c e>> |

  <<g,16 b f'>> <<g, b e>> <<g, d'>> r16
    <<g,16 e'>> <<g, d'>> <<g, c>> r16 |
  <<fs,16 c' d>> <<g, c e>> <<a, c fs>> r16 <<g,4~ b~ g'~>> |
  <<g, b g'>> <<a,~ c~ fs~>> | <<a, c fs>> <<b, d f>> |
  <<e16 g>> <<c, e>> <<g, c>> <<b d>> <<c8 e>> <<g, d'>> |
  \acciaccatura e8 <<g,8. d'>> <<e,16 c'>> <<e,4 c'>> 

  <<e,16 g>> c e <<g, d'>> \acciaccatura e8 <<g, d'>> <<g, c>> |
  b16 a' <<b,8 d g>> <<b,4 d g>> |
  <<e16 g>> <<c, e>> c <<b d>> <<c8 e>> <<g, d'>> |
  \acciaccatura e8 <<g,8. d'>> <<e,16 c'>> <<e,4 c'>> |
  a16 c e d c8 r16 a | fs d fs a d8 r8 |
  \acciaccatura af8 g8 g16 g \acciaccatura fs'8 <<b,4 g'>> |

  <<g,16 ef'>> <<f, g d'>> <<ef, g c>> r16 \acciaccatura cs8 <<fs,4 d'>> |
  \acciaccatura af8 g8 g16 g \acciaccatura fs'8 <<b,4 g'>> |
  <<g,16 ef'>> <<f, g d'>> <<ef, g c>> r16 \acciaccatura cs8 <<fs,4 a d>> |
  \acciaccatura {d16[ c]} <<f,!8 af bf>> bf16 bf
    \acciaccatura a'8 <<d,4 bf'>> |
  <<g,16 bf g'>> <<g, bf f'>> <<g, bf ef>> r16
    <<f, bf f'>> <<f, bf ef>> <<f, bf d>> r16 |
  <<g, ef'>> <<g, d'>> <<g, c>> r16 <<fs, d'>> <<fs, cs'>> <<fs, d'>> r16 |

  <<g,2 b g'>> | <<a, c fs g>> | <<b, d f! g>> |
  <<g,16 c e>> <<g, b d>> <<e, g c>> r16 <<g4~ c~ e~>> |
  % same as first measure
  <<g,8 c e>> <<g, b d>> <<e, g c>> r8 |
  }


  lower = \relative c { 
  \clef bass 

  <<c16 c'>> <<g, g'>> <<c,, c'>> r16 r8 <<g,8 g'>> |
  <<c,8 c'>> <<g, g'>> <<c, c'>> <<g, g'>> |
  <<d'16 d'>> <<c, c'>> <<g, g'>> r16 r8 <<g,8 g'>> |
  <<d8 d'>> <<c, c'>> <<g, g'>> <<g,, g'>> |
  <<c4 e g>> <<e g c>> | <<g c e>> <<c8 e>> <<c e>> |

  d16 c b r16 c b a r16 | <<d,16 d'>> <<d,16 d'>> <<d,16 d'>> r16
    <<g,,8 b d g>> r16 g,16 |
  af16 a bf b c cs d ef | e16 f fs g af a bf b |
  << { << e,16 c'>> g e g g8 <<g b>> } \\ { c,4. c8 } >> |
  <<c8. g' b>> <<c,16 g' c>> <<c,4 g' c>> |
  
  c,16 e g f <<c8 e>> <<c8 e>> | <<g, d' g>> <<g d' f>> <<g,4 d' f>> |
  << { <<e,16 c'>> g e g g8 <<g b>> } \\ { c,4. c8 } >> |
  <<c8. g' b>> <<c,16 g' c>> <<c,4 g' c>> | a8 r8 r16 e'16 c a |
  fs16 d fs a d8 r8 |
  <<g,, g'>> <<g16 b d f!>> <<g, b d f>> <<g,4 b d f>> |

  <<c,16 g'>> <<d g>> <<ef g>> r16 <<af,4 c af'>> |
  <<g,8 g'>> <<g16 b d f!>> <<g, b d f>> <<g,4 b d f>> |
  <<c,16 g'>> <<d g>> <<ef g>> r16 <<d4 fs a d>> |
  <<bf,8 bf'>> <<d16 f af>> <<d, f af>> <<d,4 f af>> |

 % as printed: b natural in bass line

%{  <<ef,16 b' ef>> <<ef, b' ef>> <<ef, b' ef>> r16
    <<bf, d b'>> <<bf, f' b>> <<bf, f' b>> r16 | %}

 % with bf for b at beginning of measure

  <<ef,16 bf' ef>> <<ef, bf' ef>> <<ef, bf' ef>> r16
    <<bf, d bf'>> <<bf, f' bf>> <<bf, f' bf>> r16 |

  <<c, c'>> <<c, g'>> <<c, ef>> r16
    <<af, c af'>> <<af, c af'>> <<af, c af'>> r16 |

  <<g,8 b d g>> r16 g,16 af16 a bf b | c cs d ef e f fs g |
  af a bf b c cs d r16 |
  <<c, c'>> <<g, g'>> <<c,, c'>> r16 r8 <<g,8 g'>> |
  % same as first measure
  <<c,8 c'>> <<g, g'>> <<c, c'>> <<g, g'>> |
  } 

\header
  {title = \markup \bold
    {Chorus of the Sailors.}
  }

\score { 
  << 
    \new PianoStaff << 
    \new Staff = "upper" { \global \upper }
    \new Staff = "lower" { \global \lower }
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
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 90 4) } 
    }
}

