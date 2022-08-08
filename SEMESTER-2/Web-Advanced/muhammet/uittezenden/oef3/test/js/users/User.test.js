import User from "../../../src/js/users/User";
import {usage} from "jest-cli/build/cli/args";

test('Throws error when the name length is not 3 or more', () => {
    expect(() => {
        new User("m")
    }).toThrow();
})

test('Throws error when the name is not a string', () => {
    expect(() => {
        new User(1)
    }).toThrow();
})

test('The toString should return of the format (name)', () => {
    let user = new User("geert")
    expect(user.toString()).toBe("(geert)");
})