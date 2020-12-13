\version "2.20.0"
\header {
  title = "On the Sunny Side of the Street"
}

melodyA = {
  r2 c''8 c'' c'' c'' |
  c''4 r4 c''4 r8 c''8( |
  c''4)
}

harmonyA = {
  r1 r r r r
}


chordsA = \chordmode {
  g1:7 c:6 e:7 f:6 g:13
}

lyricsA = \lyricmode {
  Grab -- bin' up your
  hats, coats, boots
  and eve -- ry -- thing. Leave your
  wor -- ries on the door -- step 'cause we're
  go -- in' bye 'n' bye. Just di --
  rect your feet. You
  look neat. On the
  sun -- ny side of the
  street.
  Can't you head the
  pit -- ter and the pat -- ter of the
  rain -- drops tri -- pp -- ling down the
  fi -- re es -- cape lat -- ter.
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordsA
    }
    \new Staff {
      \new Voice = "melody" {
        \clef "treble"
        \melodyA
      }
    }
    \new Lyrics \lyricsto "melody" {
      \lyricsA
    }
    \new Staff {
      \clef "bass"
      \harmonyA
    }
  >>
  \layout {}
  \midi {
    \tempo 4 = 110
  }
}
