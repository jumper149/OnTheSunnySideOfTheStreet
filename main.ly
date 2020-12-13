\version "2.20.0"
\header {
  title = "On the Sunny Side of the Street"
}

melodyA = {
  r2 c''8 c'' c'' c'' |
  c''4 r c''4 r8 c''( |
  c'') a' c'' c'' c''4 c''8 c'' |
  c'' c'' c'' c'' c'' c'' c'' c'' |
  c'' c'' c'' c'' c''4 c''8 c'' |
  c'' c'' r c'' r4. c''8( |
  c''4) c''8 c'' r4 c''8 c'' |
  r c'' c'' r e''4 e''8 e'' |
  c''4 r2. \bar "||"
}

harmonyA = {
  r1
  r r r r
  r r r r
}

chordsA = \chordmode {
  g1:7
  c:6 e:7 f:6 g2:13 gis:dim7
  a1:min7 d:7 d:min7 g:7
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
}

melodyB = {
  r8 e'' r c'' e''4 r8 c'' |
  e'' e'' b' b' e'' e'' d'' e'' |
  f''4 e'' \tuplet 3/2 { d''8 des'' c'' } a'8 g' |
  \tuplet 3/2 { c''8 c'' a' } a'4 e''8 e'' r4
}

harmonyB = {
  r1 r r r
  r r r r
}

chordsB = \chordmode {
  c1:6 e:7 f:6 g2:7 gis:dim7
  a1:min7 d:7 d2:min7 g:7 c1:6
}

lyricsB = \lyricmode {
  Can't you hear the
  pit -- ter and the pat -- ter of the
  rain -- drops tri -- pp -- ling down the
  fi -- re es -- cape lat -- ter.
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordsA
      \chordsB
    }
    \new Staff {
      \new Voice = "melody" {
        \clef "treble"
        \melodyA
        \melodyB
      }
    }
    \new Lyrics \lyricsto "melody" {
      \lyricsA
      \lyricsB
    }
    \new Staff {
      \clef "bass"
      \harmonyA
      \harmonyB
    }
  >>
  \layout {}
  \midi {
    \tempo 4 = 110
  }
}
