#include <QApplication>
#include <QWidget>
#include <QPushButton>
#include <QHBoxLayout>
#include <QMessageBox>


int main(int argc, char* argv[]) {

    QApplication app(argc, argv);

     QWidget window;

    window.resize(800, 500);
    window.setWindowTitle("Simple example");
    //set a tool tip
    window.setToolTip("QWidget");

    //Buttons
    QPushButton *button1 = new QPushButton("Button1");
    QPushButton *button2 = new QPushButton("Button2");

    //layout to hold the buttons
    QHBoxLayout *layout = new QHBoxLayout;
    layout->addWidget(button1);
    layout->addWidget(button2);

    window.setLayout(layout);

    // Connect button clicks to actions 
    QObject::connect(button1, &QPushButton::clicked, [&]() { 
        QMessageBox::information(&window, "Clicked", "Button 1 clicked"); }); 

    QObject::connect(button2, &QPushButton::clicked, [&]() { 
        QMessageBox::information(&window, "Clicked", "Button 2 clicked"); });

    window.show();

    return app.exec();
}