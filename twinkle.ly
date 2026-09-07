\version "2.26.0"

\version "2.26.0"


\header {
  title = "Twinkle, Twinkle, Little Star"
  subtitle = "Beginner Piano — C Major"
  composer = "Traditional"
  tagline = ##f
}

rightHand = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo "Gently" 4 = 80

  % Twinkle, twinkle, little star
  c4 c g' g | a4 a g2 |
  % How I wonder what you are
  f4 f e e | d4 d c2 | \break

  % Up above the world so high
  g'4 g f f | e4 e d2 |
  % Like a diamond in the sky
  g4 g f f | e4 e d2 | \break

  % Twinkle, twinkle, little star
  c4 c g' g | a4 a g2 |
  % How I wonder what you are
  f4 f e e | d4 d c2 \bar "|."
}

leftHand = {
  \clef bass
  \key c \major
  \time 4/4

  c1 | f2 c |
  f2 c | g,2 c |

  c2 f | c2 g, |
  c2 f | c2 g, |

  c1 | f2 c |
  f2 c | g,2 c |
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \rightHand
    \new Staff = "left" \leftHand
  >>
  \layout { }
  \midi { }
}