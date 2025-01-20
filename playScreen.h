#ifndef PLAYSCREEN_H
#define PLAYSCREEN_H

// #include <QWidget>

// class PlayScreen : public QWidget {
//     Q_OBJECT
// public:
//     PlayScreen(QWidget* pwgt = 0);

// public slots:
//     void slotScreenRules();
// };
#include <QObject>

class PlayScreen : public QObject
{
//     Q_OBJECT
// public:
//     explicit PlayScreen(QObject *parent = nullptr);
//     Q_INVOKABLE int getTextSize() {return textSize; }
//     Q_INVOKABLE QString getTextContent() {return textContent; }
// private:
//     int textSize {18};
//     QString textContent {"Hello World"};
    Q_OBJECT
public:
    PlayScreen(QObject* parent = nullptr);
public slots:
    void onClickedHeader();
};

#endif // PLAYSCREEN_H
