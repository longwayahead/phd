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
        d2 c d \bar "|"
        f g f \bar "|" 
        e d \bar "|" 
        a' g f \bar "|" 
        g f e d \bar "||"
        }
      }
      \relative c'{
      \new Voice {
        \voiceTwo
         a g a d e c c a
         f' e d d d cis a
      }
      }
      >>
      \new Staff <<
        \clef bass
      \new Voice {
        \omit Staff.TimeSignature
        \voiceOne
        \relative g {
          f g f a c a g f
          c' c a bes a a f
          }
      }
      \new Voice {
        \voiceTwo
        \relative g {
          <d d,> <e e,> <d d,> <d d,> <c c,> f, <c c'> <d d'>
          <f f'> c' <d d,> g, <d' d,> a <d d,>
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
