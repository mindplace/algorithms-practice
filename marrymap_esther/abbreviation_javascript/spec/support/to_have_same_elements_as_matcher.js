beforeEach(function(){
  jasmine.addMatchers({
    toHaveSameElementsAs: function(actual, expected) {
      return {
        compare: function(actual, expected) {
          if (actual.length !== expected.length) {
            return { pass: false };
          }

          var unmatchedElements = expected.filter(function(expectedElement) {
            return !actual.find(function(actualElement) {
              return expectedElement === actualElement;
            });
          });

          return { pass: (unmatchedElements.length === 0) };
        }
      };
    }
  });
});
