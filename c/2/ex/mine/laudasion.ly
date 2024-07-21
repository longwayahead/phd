\version "2.18.0-1"
stemOff = { \hide Staff.Stem }
stemOn = \undo \stemOff
lauda = \lyricmode {
  Lau -- da, Si -- on, sal -- va -- to -- rem, lau -- da du -- cem et pas -- to -- rem, in hym -- nis et can -- ti -- cis.
}
\score {
  
  <<
      \new Staff {
        \new Voice = "cantus" {
         \clef treble
        \key g \major
        \relative g' {
          \time 4/2
          d2 g a g \bar "||"
          c b a g
          \time 9/2
          a b g e f e d( e) g
          \time 3/2
          a b a
          \time 7/4
          g fis! g4 g2
          \bar "|."
        }
        }
       
      }
      \new Lyrics \lyricsto "cantus" {
        \lauda
      }
  \new PianoStaff <<
   
        \new Staff <<
          \key g \major
          \new Voice = "first" {
            \voiceOne
            \relative e' {
              \stemOff
              <b d>4 s <b d g> s <d fis a> s <b d g> s |
              <e g c> s <d g b> s <c fis a> s <b g'> s |
              <d fis a> s <d g b> s <b g'> s <bes e> s <a fis'>^\markup{"["\italic"sic"\normal-text"]"} s <a cis e> s d( s <c e>) s <b d g> s
              <d fis a> s <d g b> s <c fis a> s |
              <b g'> s <c d fis> s \stemOn <b d g>8 s8 \stemOff <b d g>
              
            }
          }
        >>
          
       
        \new Staff <<
          \clef bass
            \key g \major
          
          \new Voice = "bass" {
            \voiceTwo
            \relative g {
            \stemOff
            g4 s g s d s g s |
            c, s g' s d s e s |
            d s g s g s c, s d s a s d( s c) s g s |
            d' s g s d s |
            e s d s \stemOn g8 \stemOff s8 g4 s4 |
            }
          }
        >>

  >>
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
     }
      \context {
       \Voice
       \consists "Horizontal_bracket_engraver"
     }
     \context {
       \Score
       \remove "Bar_number_engraver"
     }
  }
}
