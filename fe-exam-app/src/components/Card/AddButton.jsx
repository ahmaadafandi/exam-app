import React, { Component } from 'react';

export default function AddButton({ handleAdd }) {
  return (
    <button className="btn-modal" data-toggle="modal" data-target="#formDataModal" onClick={handleAdd}>
      <i className="feather icon-plus"></i>
    </button>
  );
}
