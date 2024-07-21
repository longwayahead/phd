\version "2.18.2"
\include "lilypond-book-preamble.ly"
\score{

  <<
    
    \new PianoStaff       
      <<
      \new Staff <<
        \cadenzaOn
      \clef treble
      \new Voice {
        \omit Staff.TimeSignature
        \voiceOne
        \relative g'{
        e1 e f e d \bar "|"
        g g a c c \bar "|"
        c d c c b a c \bar "!"
        }
      }
      \relative c'{
      \new Voice {
        \voiceTwo
        b c c c
        b d e f g g
        a a a g g f g
      }
      }
      >>
      \new Staff <<
        \clef bass
      \new Voice {
        \omit Staff.TimeSignature
        \voiceOne
        \relative g {
          g g a g g
          b b d e e
          f f f e e c e
          
          }
      }
      \new Voice {
        \voiceTwo
        \relative g {
          e c f c g'
          g e d c c
          f d f c e f c
          }
      }
      >>
    >>


  >>
  \layout {
    \context {
      \Score
      \remove "Time_signature_engraver"
      \remove "Bar_number_engraver"
    }
  }
}
