import User from '../../src/js/users/User';

describe('constructor',
() => {
   it('should throw error when parameter is less than 3 chars',
     () => {
      expect(() => {
        new User("m");
      }).toThrow(Error);
   });
    it('should throw error when parameter is a number',
    () => {
      expect(() => {
        new User(1);
      }).toThrow(Error);
    });
})

test('toString to return the correct value', () => {
  const user=new User("geert");
  const returnedString = user.toString();
  expect(returnedString).toBe("(geert)");
});
