import "package:test/test.dart";
import '../lib/data/history.dart';
import '../lib/data/historical_detail.dart';

void main() {
  var json = {
    'history': [
      {'title': 'one', 'content': 'one'},
      {
        'title': 'two',
        'content': [
          {'title': 'two-one', 'content': 'two-one'},
          {
            'title': 'two-two',
            'content': [
              {'title': 'two-two-one', 'content': 'two-two-one'},
              {'title': 'two-two-two', 'content': 'two-two-two'},
            ]
          },
        ]
      },
    ],
  };
  var dart = History(
    history: [
      HistoricalDetail(
        title: 'one',
        content: 'one',
      ),
      HistoricalDetail(
        title: 'two',
        content: [
          HistoricalDetail(
            title: 'two-one',
            content: 'two-one',
          ),
          HistoricalDetail(
            title: 'two-two',
            content: [
              HistoricalDetail(
                title: 'two-two-one',
                content: 'two-two-one',
              ),
              HistoricalDetail(
                title: 'two-two-two',
                content: 'two-two-two',
              ),
            ],
          ),
        ],
      ),
    ],
  );
  test("History.fromJson", () {
    expect(
      History.fromJson(json),
      equals(dart),
    );
  });
  test("History.toJson", () {
    expect(
      dart.toJson(),
      equals(json),
    );
  });
}
