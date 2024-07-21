\version "2.18.2"

\paper  {
  #(define fonts
    (make-pango-font-tree "Times New Roman"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))
}

\score {
  <<
    \new Staff {
      \new Voice = "melody" {
      \relative g'{
        \omit TupletNumber
        g8^"Largo"\(( d') d4~\) d8 d16\(( e d8.) c16 c8\) d16\(( c e8. d16) d4\)\fermata
        g,8\(( d')~ d d16( e d8.) c16 \tuplet 3/2{ b8( a8.)\) c16\((} d8.) c16 c8.\) c16\(( \tuplet 3/2 {d8 c8.) g16_(
        } a4 g)\)\fermata\bar"||"
        \time 9/8
        g8.\( a16 c8 c8.( d16 e f d4) c8 c4\) r8 r8 c\p\( c d( c e d4) c8 c8.\) c16\(( a b c4 b8) b4.( a4)\) r8 r4. \bar "||"
        \time 6/8
        c8\(( b) c c16( e d8.) c16 |
        c4\) r8 c4\( c8 |
        c( d) b( c4. |
        b4. a4\)) c8( |
        e4.) d4 a16\(( c) c8( b8. a16) a4\) a8\(( c4 b16 a c4) g8( a4 g8) g4\) r8 R2. \bar "|."
        }
      }
    }
    \new Lyrics {
      \lyricsto "melody" {
        Pu -- er na -- tus est no -- bis.
        et Fi -- li -- us da -- tus est no -- bis __
        Cu -- jus im -- pe -- ri -- um
        su -- per hu -- mer -- um ei -- jus
        et vo -- ca -- bi -- tur no -- men ei -- jus, mag -- ni con -- si -- li an -- ge -- lus
      }
      
    }
    \new PianoStaff
      <<
      \new Staff <<
      \clef treble
      \time 2/4
      \new Voice {
        \voiceOne
        \relative f' {
          a4\rest d,8 g f4~ f16 e d8 e f g4 d8 g g4~ g2
          c,8 f4 e8 c8 f4 e8  f e d4\fermata
          g8\rest g8. f16 e8 f4~ f16 d g4~ g16 a g8 f g4. a4. r8 g( g a g f g c b)  b4.( a4.) r8 a b
          c8 b c~ c a g e4 f8 g4.~ g~ g8 f e d4.~ d4 c8 e4. d8 g e f d e c d4 e8 f4 e8 f d16 e f4 e8 d e16 d c8 d4
        }
        
      }
      \new Voice {
        \voiceTwo
        \relative c' {
        s2 s2 c2~ c8 b16 a b8 c d4\< e\! c2 c2~ c4 b
        s8 e8.\f d16 c8 a c b8. c16 d e c f e8 d e2.
        r8 e( e f e d e a g)  f2. e8. f16 g8
        a8 g4 f\> d8\! c4.~ c8 d e d4. c b a4 c8~\< c4.\> b8\! d c~ c b4 a4. c4.~ c4 b8 c4. b8 c16 b a8 b4 b'8\rest b4.\rest
        }
      }
      >>
      \new Staff <<
        \clef bass
        \new Voice {
          \voiceOne
          \relative b {
            b2^\p a8 g a b s2 g2~ g a4. g8 a4.^\> g8\! a4 b\fermata
            d,4.\rest d8\rest f8 d g4 c,8 f8 c d c4. a4. r8 g'8\p^\<( g a g f g a b) c4.~\> c16\! d c8 d e16^\< d c8 d
            f8\! d c a4 b8  c4 a8 g4.~ g4 f8 e f4  g4.~ g8 f g a g a b4 c8 a8 b g a^\< f4  g8 a4 g8\! a b a4 g8 g4.~ g4 s8 s4.
          }
        }
        \new Voice {
          \voiceTwo
          \relative g {
            g2 d a'4 e8 f a,4\rest g8 a b g c4 f4. c8 f4. c8 f4 g 
            s2. s2. s2. r8 e( e f e d e f g) a16 g f8 g a4 b8 c16 b a8 g
            f8 g e f4 g8 a8 g f e d c g4. a r8 b8 c d4 e8 c4. g'4 a8 f g e f d4 c8 f4 c8 f g f e16 d e f g8 c,4 | g4 d'8\rest d4.\rest
          }
        }
      >>
    >>
  >>
}
