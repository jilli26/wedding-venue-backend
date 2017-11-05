Object.defineProperty(exports, "__esModule", {
  value: true
});

var _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; };

var _react = require('react');

var _react2 = _interopRequireDefault(_react);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

// eslint-disable-line no-unused-vars
var LeftArrow = function () {
  function LeftArrow(props) {
    return _react2['default'].createElement(
      'svg',
      _extends({
        viewBox: '0 0 1000 1000'
      }, props),
      _react2['default'].createElement('path', {
        d: 'M336.2 274.5l-210.1 210h805.4c13 0 23 10 23 23s-10 23-23 23H126.1l210.1 210.1c11 11 11 21 0 32-5 5-10 7-16 7s-11-2-16-7l-249.1-249c-11-11-11-21 0-32l249.1-249.1c21-21.1 53 10.9 32 32z'
      })
    );
  }

  return LeftArrow;
}();

exports['default'] = LeftArrow;