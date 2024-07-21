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
        f1 a bes c c c
        d c b c
        f d c bes! c d c \bar "|"
        c a g f bes! a g g f s \bar "||"
        }
      }
      \relative c'{
      \new Voice {
        \voiceTwo
        c f f g g a
        a g  g g
        c bes g f g bes g
        a f e d f f e e c
      }
      }
      >>
      \new Staff <<
        \clef bass
      \new Voice {
        \omit Staff.TimeSignature
        \voiceOne
        \relative g {
          a c d e e f
          f e d e
          f f e d e f e
          f c c a d c
          c c a s
          
          }
      }
      \new Voice {
        \voiceTwo
        \relative g {
          f f d c c f d e g c,
          a bes c d c bes c
          f f c d bes f c' c f,
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
