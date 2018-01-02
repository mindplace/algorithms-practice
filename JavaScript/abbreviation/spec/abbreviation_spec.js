describe("abbreviation", function() {
  it("returns true for hello and hlo", function() {
    expect(isAbbr("hello", "hlo")).toBe(true);
  });

  it("returns true for hello and lo", function() {
    expect(isAbbr("hello", "lo")).toBe(true);
  });

  it ("returns false for hello and oh", function() {
    expect(isAbbr("hello", "oh")).toBe(false);
  })

  it("returns false for hello and le", function() {
    expect(isAbbr("hello", "le")).toBe(false);
  });

  it("returns false when searched word contains letters not found in base word", function() {
    expect(isAbbr("hello", "howl")).toBe(false);
  })
});
