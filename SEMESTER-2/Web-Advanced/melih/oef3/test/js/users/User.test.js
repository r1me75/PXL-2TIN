import User from "../../../src/js/users/User";

describe('user tests',
    () => {
        it('should throw Error for User object with invalid string args',
            () => {
                expect(() => {
                    new User('m');
                }).toThrow();
            }),
            it('should throw Error for User object with invalid int args',
                () => {
                    expect(() => {
                        new User(1);
                    }).toThrow();
                }),
            it('toString should return correct output',
                () => {
                    let user = new User("Geert")
                    expect(user.toString()).toBe("(Geert)")
                })
    }
);

// describe('body',
//     () => {
//         it('t',
//             () => {
//                 let dobbelsteenWorp = new Dobbelsteen('3');
//
//                 expect(dobbelsteenWorp).toBeInstanceOf(Dobbelsteen);
//             }
//         )
//         it('tt',
//             () => {
//                 expect(() => {
//                     new Dobbelsteen('F');
//                 }).toThrow();
//             })
//     }
// );
