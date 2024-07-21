\version "2.18.0-1"
kyrie = \lyricmode {
  Ky -- _ _ ri -- e, _  E -- _ _ _ _ _ _ _ _ _ le -- i -- son.
}
\score {
  \new PianoStaff <<
    \new Staff = "staff" <<
      \clef treble
      \key g \minor
      \new Voice = "melody" {
        \voiceOne
        
        \relative d'' {
              d1 ees d c2 d1 g, \bar "|"
              \time 27/2
              bes c d ees d c a bes a g f a2 a1 g \bar "|."
            }
      }
      \new Voice = "alto" {
        \voiceTwo
            \voiceTwo
            \relative g' {
              g g f f2 f1 ees \bar "|"
              d f f g f f f d d bes bes c2 c1 bes
            }
          }
    >>
    \new Lyrics \with { alignAboveContext = "staff" } {
      \lyricsto "melody" {
        Ky -- _ _ ri -- e, _  E -- _ _ _ _ _ _ _ _ _ le -- i -- son.
      }
    }
    \new Staff <<
          \clef bass
            \time 11/2
            \key g \minor
          \new Voice = "tenor" {
            \voiceOne
            \relative g {
              bes bes bes a2 bes1 bes \bar "|"
              bes a a c a a c bes f g d f2 f1 d |
              
            }
          }
          \new Voice = "bass" {
            \voiceTwo
            \relative g {
            g ees bes f'2 bes,1 ees |
            g f d c d f f, g d' ees bes f2 f1 g |
            }
          }
         
        >>
  >>

  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
      
     }
    
     \context {
       \Score
       \remove "Bar_number_engraver"
     }
  }
}
