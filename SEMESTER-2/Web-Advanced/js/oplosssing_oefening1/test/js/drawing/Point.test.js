import Point from '../../../src/js/drawing/Point';

describe('constructor',
    () => {
        it('should generate a Point-object for valid args',
            () => {
                expect(new Point(1, 1)).toBeInstanceOf(Point)
            })
        it('should throw error when 1st parameter is not a number',
            () => {
                expect(() => {
                    new Point("a", 1);
                }).toThrow(Error)
            })
        it('should throw error when 2nd parameter is not a number',
            () => {
                expect(() => {
                    new Point(1, "a");
                }).toThrow(Error)
            })
    }
);

test('getX should return the correct value', () => {
    expect(new Point(1, 2).getX()).toBe(1);
});

test('getY should return the correct value', () => {
    expect(new Point(1, 2).getY()).toBe(2);
});

test('toString to return the correct value', () => {
    expect(new Point(1, 2).toString()).toBe("(1,2)");
});

