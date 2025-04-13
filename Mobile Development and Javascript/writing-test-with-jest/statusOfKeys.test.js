const statusOfKeys = require("./statusOfKeys");
const spyConsoleLog = jest.spyOn(console, "log");

spyConsoleLog.mockImplementation((keys) => keys);

test("return true of statusOfKeys exists", () => {
  statusOfKeys(true);
  //expect(statusOfKeys).toBeDefined();
  expect(console.log).toBeCalled();
});
