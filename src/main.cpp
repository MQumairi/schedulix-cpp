#include <Poco/Logger.h>
#include <Poco/ConsoleChannel.h>
#include <Poco/AutoPtr.h>

using Poco::Logger;
using Poco::ConsoleChannel;
using Poco::AutoPtr;

int main(int argc, char** argv) {
    AutoPtr<ConsoleChannel> console_channel(new ConsoleChannel);
    Logger& logger = Logger::get("MyLogger");
    logger.setChannel(console_channel);
    logger.information("Hello, World!");
    return 0;
}