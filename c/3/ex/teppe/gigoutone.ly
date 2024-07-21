\version "2.18.2"
\paper  {
  #(define fonts
    (make-pango-font-tree "Times New Roman"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))
}
text =  \lyricmode {
  Pu -- er na -- tus est no -- bis.
}

\score {
  <<
    \new Staff {
      \new Voice = "melody" {
      \relative g'{
        \omit TupletNumber
        R2^"Largo" g8\(( d') d4~\) d8 d16\(( e d8.) c16 c8\) d16\(( c e8. d16) d4\)\fermata
        g,8\(( d')~ d d16( e d8.) c16 \tuplet 3/2{ b8( a8.)\) c16\((} d8.) c16 c8.\) c16\(( \tuplet 3/2 {d8 c8.) g16_(
        } a4 g)\)\fermata\bar"||"
        \time 9/8
        g8.\( a16 c8 c8.( d16 e f d4) c8 c4\) r8 r8 c\p\( c d( c e d4) c8 c8.\) c16\(( a b c4 b8) b4.( a4)\) r8 r4. \bar "||"
        \time 6/8
        c8\(( b) c c16( e d8.) c16 |
        c4\) r8 c4\( c8 |
        c( d) b( c4. |
        b4. a4\)) c8( |
        e4.) d4 a16\(( c) c8( b8. a16) a4\) a8\(( c4 b16 a c4) g8( a4 g8) g4\) r8 \bar "|."
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
        \relative g'{
        
         g2~\p g~ g <f a>4 <e g> g2\fermata
         a~ a4 g g2 a4 g\fermata 
         g8.\f_( a16 c8) c4.( d4 e8) e4 r8 e,2.~ e4. g4.~ g e~ e4 e8(\< f\> e\! d
         e4.~) e4 e8(\< f e\> d\! e4.) f4. c~ c4 d8 e4\< f8 g4.~\> g4\! f8 g4. f8 g a a4. g4 g8 a4\> g8\! g4 b8\rest
        }
      }
      \relative c'{
      \new Voice {
        \voiceTwo
        <b d>2~ <b d>~ <b d>4 <c e> c2 d |
        <d f>4 <c e> <d f> b c2 c4 b
        s4. <f' a>4.~ <f a>4 <g c>8 <g c>4 r8 c,2.~\p c d4. c4. c4 a8 a4.
        g4.~ g4 g8 a4. g4. a2.~ a4. c4. e4.( d4) d8 e4. d4\< f8\! e f4~ f8 e g~ g f e d4 s8
      }
      }
      >>
      \new Staff <<
        \clef bass
      \new Voice {
        \voiceOne
        \relative g {
          g2~ g~ g a4 g b2\fermata 
          a2 s4 d, e2 f8 e d4\fermata
          s4. c'4.( d4 e8 e4) r8 a,2. g2.~ g4. e4.~ e4 c8 c4.
          c4.~ c4 c8 c2. c4. f8 e d e4. a g4 a8 b4 a8 c4. a4 d8 c2.~ c16 b a b c8 b4 s8
          }
      }
      \new Voice {
        \voiceTwo
        \relative g, {
          g2~ g~ g4 c f c g'2|
          d4 a d g, c2 f,4 g
          g'8.^( a16 c8) <f, a>4.~ <f a>4 c'8 c4 r8 <a, e'>2.~ <e e'> g4. a4.~ a4 a8 f4.
          c4.~ c4 c8 f4. c4. f2. a4.~ a8 g f c'4. g'4 d8 c4. d4 d8 a'8 f4 c e8 f4 c8 g'4 d8\rest
          
        }
      }
      >>
    >>


  >>
}
