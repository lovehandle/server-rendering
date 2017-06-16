import React from 'react';
import ReactDOMServer from 'react-dom/server';

export const Header = ({ text }) => <h1>{text}</h1>;

export const render = (Component, props = {}) => {
  return ReactDOMServer.renderToString(
    <Component { ...props } />
  );
};
