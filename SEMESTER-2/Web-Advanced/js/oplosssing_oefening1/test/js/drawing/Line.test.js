import Point from '../../../src/js/drawing/Point';
import Line from '../../../src/js/drawing/Line';

describe('constructor',
    () => {
        it('should generate a Line-object for valid args',
            () => {
                let line = new Line(new Point(1, 1), new Point(2, 3));
                expect(line).toBeInstanceOf(Line)
            });
        it('should throw error when 1st parameter is not a Point',
            () => {
                expect(() => {
                    new Line(1, new Point(2, 3))
                }).toThrow(Error)
            });
        it('should throw error when 2nd parameter is not a number',
            () => {
                expect(() => {
                    new Line(new Point(1, 1), 'a')
                }).toThrow(Error)
            });
    }
);

test('getPoint1 should return the correct value', () => {
    let line = new Line(new Point(1, 2), new Point(3, 4));
    expect(line.point1).toEqual(new Point(1, 2));  // niet toBe!
});

test('getPoint2 should return the correct value', () => {
    let line = new Line(new Point(1, 2), new Point(3, 4));
    expect(line.point2).toEqual(new Point(3, 4));  // niet toBe!
});

test('toString to return the correct value', () => {
    let line = new Line(new Point(1, 2), new Point(3, 4))
    expect(line.toString()).toBe("Line (1,2)-(3,4)");
});




