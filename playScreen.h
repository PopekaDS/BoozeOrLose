#ifndef PLAYSCREEN_H
#define PLAYSCREEN_H

#include <QObject>

class PlayScreen : public QObject
{
    Q_OBJECT
public:
    explicit PlayScreen(QObject* parent = nullptr);

signals:
    void SendPlayWithoutMaster();
    void SendPlayWithMaster();
    void SendRules();
    void SendQuit();

public slots:
    void receivePlayWithoutMaster();
    void receivePlayWithMaster();
    void receiveRules();
    void receiveQuit();
};

#endif // PLAYSCREEN_H
