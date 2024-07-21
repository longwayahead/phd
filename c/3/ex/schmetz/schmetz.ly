\version "2.18.2"
\include "lilypond-book-preamble.ly"
\score {
  \new PianoStaff
  <<
    \new Staff = "upper" {
     <<
       \new Voice {
         \voiceOne
         \key c \major
         \cadenzaOn
         \relative c''{
           g4 g g g a \bar "|"
           g f g a \bar "|"
           a \slurDashed g( c) b a g f( g a) a( g) \bar "||"
         }
         \slurSolid
         \key d \minor
         \relative c'' {
           
         a bes \once \override TextScript.extra-offset = #'(-1 . 0) a^\markup{\teeny{"["\italic "sic" "]"}} g \slurDashed a( d,) f( g a bes a g) f( e d) c d d \bar "||"
         }
       
       }
       \new Voice {
         \voiceTwo
         \relative d' {
           d \tiny d e e f
           \normalsize c \tiny d e f
           \normalsize f e( e e e e) \tiny d e e f d \break
           %
           \slurSolid
           \normalsize d( d d d) cis? \tiny a d d c? bes c c a c bes a a a
         }
       }
     >>
    }
    \new Staff = "lower" {
     << 
     \new Voice {
       \voiceOne
       \key c \major
       \clef "bass"
       \relative b {
         b \tiny b b c c
         \normalsize g \tiny a c c
         \normalsize c( c)( c c c c) \tiny a c c c b 
         %
         \key d \minor
         \slurSolid
         \normalsize \slurDashed f( g\( g g\)) e \tiny f
         f d f g f e f a f f f f
       }
     }
     \new Voice {
       \voiceTwo
       \relative g {
         g g e c f
         e d c f
         f c( c c c c) \slurDashed d( c a) f( g) 
         %
         
         d'( g, d' bes) a( d) \slurSolid bes( \slurDashed bes)( a g a c) d( a bes) f' d d
       }
     }
     \new FiguredBass {
       \figuremode {
         r4 r4 r4 r4 r4 
         r4 r4 r4 r4
         r4 r4 r4 r4 r4 r4 r4 r4 r4 r4 r4 
         %
         r4 r4 r4 < 6 > < _+ > r4 <5> <6> <6> r4 <6> r4 r4 r4 r4 r4 r4 r4
       }
     }
     >> 
    }
  >>
  \layout {
      indent = #0
      %line-width = #150
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
  \midi { }
}