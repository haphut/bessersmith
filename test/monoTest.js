const { expect } = require("chai");

const mono = require("../src/mono");

describe("transformMonoMessage", () => {
  const monoMessage =
    '{"predictions": [{"stopOrderInJourney": 46, "joreLineId": "4562", "scheduledDepartureTime": "2017-10-30T14:49:00+02:00", "joreStopId": "4520260", "predictedDepartureTime": "2017-10-30T14:48:38.897+02:00", "journeyStartTime": "2017-10-30T14:02:00+02:00", "joreLineDirection": "1"}, {"stopOrderInJourney": 46, "joreLineId": "4562", "scheduledDepartureTime": "2017-10-30T14:59:00+02:00", "joreStopId": "4520260", "predictedDepartureTime": "2017-10-30T14:56:38.327+02:00", "journeyStartTime": "2017-10-30T14:12:00+02:00", "joreLineDirection": "1"}], "messageTimestamp": "2017-10-30T12:47:34.406+00:00"}';
  const tripId1 = "4562_1_2017-10-30T14:02:00+02:00";
  const tripId2 = "4562_1_2017-10-30T14:12:00+02:00";
  const result = {
    [tripId1]: {
      id: tripId1,
      tripUpdate: {
        trip: {
          routeId: "4562",
          directionId: 0,
          startTime: "14:02:00",
          startDate: "20171030"
        },
        stopTimeUpdate: [
          {
            stopSequence: 46,
            stopId: "4520260",
            arrival: {
              delay: -21
            },
            departure: {
              delay: -21
            }
          }
        ],
        timestamp: 1509367654
      }
    },
    [tripId2]: {
      id: tripId2,
      tripUpdate: {
        trip: {
          routeId: "4562",
          directionId: 0,
          startDate: "20171030",
          startTime: "14:12:00"
        },
        stopTimeUpdate: [
          {
            stopSequence: 46,
            stopId: "4520260",
            arrival: {
              delay: -142
            },
            departure: {
              delay: -142
            }
          }
        ],
        timestamp: 1509367654
      }
    }
  };

  it("should throw on input that is not a stringified JSON object", () => {
    expect(() => mono.transformMonoMessage("foo")).to.throw(SyntaxError);
  });

  it("should return the expected result for a realistic Mono message", () => {
    expect(mono.transformMonoMessage(monoMessage)).to.deep.equal(result);
  });
});