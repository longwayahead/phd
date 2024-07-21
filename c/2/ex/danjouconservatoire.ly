\version "2.18.0-1"
%\include "lilypond-book-preamble.ly"



\score {

  \new PianoStaff{ 
      <<
        \new Staff {
          \clef treble
          \time 8/1
          \relative d'' {
             d1 c d f g f e d \bar "||"
             %<d a f> <c a f> <d a f> <f d a> <g e c> <f c a> <e c g> <d a f> \bar "||"
             %<d a f> <c a f> <d a f> <f d a> <g e c> <f d a> <e cis a> <d a>
          }
        }
        \new Staff {
          \clef bass
          \relative d {
            d1 a' f d bes d cis d \bar "||"
            %d f d d c f c d \bar "||"
            %d f d d c d a d \bar "||"
            
          }
        }
        
        
      >>
  }
  \layout {
    \context {
      \Staff
      \hide Stem
      \remove "Time_signature_engraver"
      
     }
     \context {
       \Score
       \remove "Bar_number_engraver"
     }
  }
}
