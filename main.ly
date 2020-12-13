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
  \tuplet 3/2 { c''8 c'' a' } a'4 e''8 e'' r4 |
  r8 c''4 a'8 c'' e'' r8. d''16( |
  b'4) r4. c''4 a'8 |
  r c''4 a' r c''8 |
  r4. e''4. c''8 a' |
  c''4 r2. |
  \tuplet 3/2 { c''8 c'' bes' } c''4 \tuplet 3/2 { r4 c'' c'' } |
  c''4 r4. c''4 a'8 |
  c''4 r2 e''8 r |
  r2 r4. e''8(
  e''4) e''8 c'' e'' c'' e'' e''( |
  e''8.) e''16 \glissando a'4 r2 |
  r4 e''8 c'' e'' e'' r8 e'' \bar "||"
}

harmonyB = {
  r1 r r r
  r r r r
}

chordsB = \chordmode {
  c1:6 e:7 f:6 g2:7 gis:dim7
  a1:min7 d:7 d2:min7 g:7 c1:6
  g:min7 c:7 f:maj7 r
  d:7 r d:min7 g:7
}

lyricsB = \lyricmode {
  Can't you hear the
  pit -- ter and the pat -- ter of the
  rain -- drops tri -- pp -- ling down the
  fi -- re es -- cape lad -- der.
  Life could be so fine.
  Fine is
  hmm -- hmm wine.
  I used to
  walk,
  walk in the shade, with my
  blues on pa --
  rade. But,
  I'm
  not a -- fra -- id it's o --
  ver _
  ca -- sa -- no -- va. If
}

melodyC = {
  r2 \tuplet 3/2 { e''8 e'' c'' } e''8 e'' |
  r e'' r2. |
  r2 \tuplet 3/2 { r4 a' c''8 e''8 } |
  r16 c''8. e''8 c'' e'' d''4. |
  r4 a'8 c''8( \tuplet 3/2 { c''8) c''4 } \tuplet 3/2 { c''4 d''8( } |
  d''8) d'' \glissando bes'4 r8 e''4 c''8 |
  e'' e'' r2. |
  r2 r8 aes'4 c''8 |
  es'' f''4.( f''4) r |
  r2 r8 a'4 c''8 |
  e'' e''( e''2) r4 |
  r8 e''8( e''2) e''8 e'' |
  e'' \glissando c''( c''2. |
  c''1) \bar "|."

}

harmonyC = {
  r1 r r r
  r r r r
  r r r r
  r r r r
  r r r r
  r r
}

chordsC = \chordmode {
  c1:6 e:7 f:6 g2:7 gis:dim7
  a1:min7 d:7 g:13sus4 g:13
  g:7 r g:13sus4 g:13.9-
  r c:7-9+
}

lyricsC = \lyricmode {
  I ne -- ver had one
  cent,
  I'd be rich
  as Ro -- cke -- fel -- ler.
  with gold dust at my
  feet. _ On the
  sun -- ny.
  On the
  sha -- dy.
  On the
  sun -- ny
  side of the
  street. _
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordsA
      \chordsB
      \chordsC
    }
    \new Staff {
      \new Voice = "melody" {
        \clef "treble"
        \melodyA
        \melodyB
        \melodyC
      }
    }
    \new Lyrics \lyricsto "melody" {
      \lyricsA
      \lyricsB
      \lyricsC
    }
    \new Staff {
      \clef "bass"
      \harmonyA
      \harmonyB
      \harmonyC
    }
  >>
  \layout {}
  \midi {
    \tempo 4 = 110
  }
}
