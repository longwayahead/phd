\include "lilypond-book-preamble.ly"

\score {
  \new Staff {
  \omit Staff.TimeSignature
  \omit Staff.Clef
  \stopStaff
    \relative { 
        \cadenzaOn
        \once \override Voice.NoteHead.stencil = #ly:text-interface::print
        \once \override Voice.NoteHead.text = \markup {\musicglyph #"noteheads.s1" }
      f'8[ f8] 
    
    }
  }
}

