/**
* @file main.cpp
 * @brief Define the main function for loading the MainWindow.
 *
 * Description: Just contains the main function  to run the application
 *
 * @author EnguessT
 */
#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []()->void {QCoreApplication::exit(-1);},
        Qt::QueuedConnection);
    engine.load(QUrl("qrc:/Scientool/qml/Main.qml"));

    return app.exec();
}
