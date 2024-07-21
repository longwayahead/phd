\version "2.18.0-1"

\score {
  \new PianoStaff <<
   
        \new Staff <<
          \clef treble
            \time 4/4
            \key g \minor
          \new Voice = "first" {
            \voiceOne
            \relative d'' {
             d1 ees d c d g, bes c d ees  d c a bes a g f a~ a g g~ g \bar "|."
            }
          }
          \new Voice = "second" {
            \voiceTwo
            \relative g' {
             g1~ g~ g~ g2 f f1~ f2 ees f d g f~ f1 ees2 g f1~ f2 ees4 d c2 d~ d1~ d bes2 ees~ ees d f1~ f~ f2 ees d1~ d
            }
          }
        >>
          
       
        \new Staff <<
          \clef bass
           
            \key g \minor
          \new Voice = "tehor" {
            \voiceOne
            \relative cis' {
              bes1 c~ c2 bes~ bes a bes1~ bes~ bes~ bes2 a bes1~ bes ~ bes4 f bes a g1 a~ a2 g~ g f g4 a bes2~ bes1 c d4 a d c bes2 c~ c bes4 a bes1
            }
          }
          \new Voice = "bass" {
            \voiceTwo
            \relative g {
             d2\rest g c,4 d ees f g d g f ees2 f bes, c4 d ees1 d2 g ees f bes,4 c bes a g2 ees'  bes1 c f2 f, g4 a bes c d1 ees2 g, bes1 f2 f' d1 ees2 c g1~ g
            }
          }
         
        >>
          
        
        
        
  >>
  \layout {
    \context {
      \Staff
      
     }
     \context {
       \Score
       \remove "Bar_number_engraver"
     }
  }
}
