function climbingLeaderboard(leaderboard_scores, alice_scores) {
  alice_scores = alice_scores.reverse();
  leaderboard_scores = [...new Set(leaderboard_scores)]

  let alice_rankings = [];

  for(i = 0; i < alice_scores.length; i++) {
    let alice_score = alice_scores[i]
    for(j = 0; j < leaderboard_scores.length; j++) {
      let score = leaderboard_scores[j]

      if (alice_score >= score) {
        alice_rankings.push(j + 1)
        break
      } else if (j + 1 == leaderboard_scores.length) {
        alice_rankings.push(j + 2)
      }
    }
  }
  return alice_rankings.reverse()
}

// ---------------------

function arraysEqual(a, b) {
  if (a === b) { return true };
  if (a == null || b == null) { return false };
  if (a.length != b.length) { return false };

  for (var i = 0; i < a.length; ++i) {
    if (a[i] !== b[i]) return false;
  }
  return true;
}

console.log(
  arraysEqual(
    climbingLeaderboard([100, 100, 50, 40, 40, 20, 10], [5, 25, 50, 120]),
    [6, 4, 2, 1]
  )
)

console.log(
  arraysEqual(
    climbingLeaderboard([100, 90, 90, 80, 75, 60], [50, 65, 77, 90, 102]),
    [6, 5, 4, 2, 1]
  )
)
