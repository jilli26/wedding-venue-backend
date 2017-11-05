Object.defineProperty(exports, "__esModule", {
  value: true
});

var _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; };

var _react = require('react');

var _react2 = _interopRequireDefault(_react);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

// eslint-disable-line no-unused-vars
var ChevronUp = function () {
  function ChevronUp(props) {
    return _react2['default'].createElement(
      'svg',
      _extends({
        viewBox: '0 0 1000 1000'
      }, props),
      _react2['default'].createElement('path', {
        d: 'M32.1 712.6l453.2-452.2c11-11 21-11 32 0l453.2 452.2c4 5 6 10 6 16 0 13-10 23-22 23-7 0-12-2-16-7L501.3 308.5 64.1 744.7c-4 5-9 7-15 7-7 0-12-2-17-7-9-11-9-21 0-32.1z'
      })
    );
  }

  return ChevronUp;
}();

exports['default'] = ChevronUp;