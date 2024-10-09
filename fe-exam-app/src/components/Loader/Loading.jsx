const Loading = () => (
  <div className="loading">
    <svg xmlns="http://www.w3.org/2000/svg" id="diamonds" class="" width="12em" height="6em" viewBox="0 0 128 64">
      <polygon
        class="diamond left"
        fill="none"
        stroke="#000"
        stroke-width="6"
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-dasharray="1000"
        points="32,61 3,32 32,3 61,32"
      >
        <animate
          attributeType="CSS"
          attributeName="stroke-dashoffset"
          values="1000;0;1000;1000"
          keyTimes="0;.4;.8;1"
          dur="3s"
          repeatCount="indefinite"
          id="draw-left"
        />
      </polygon>
      <polygon
        class="diamond right"
        fill="none"
        stroke="#000"
        stroke-width="6"
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-dasharray="1000"
        points="90,61 61,32 90,3 119,32"
      >
        <animate
          attributeType="CSS"
          attributeName="stroke-dashoffset"
          begin="0.5s"
          values="1000;0;1000;1000"
          keyTimes="0;.4;.8;1"
          dur="3s"
          repeatCount="indefinite"
          id="draw-right"
        />
      </polygon>
      <polygon
        class="diamond center"
        fill="none"
        stroke="#000"
        stroke-width="6"
        stroke-linecap="round"
        stroke-linejoin="round"
        stroke-dasharray="1000"
        points="61,61 32,32 61,3 90,32"
      >
        <animate
          attributeType="CSS"
          attributeName="stroke-dashoffset"
          begin="0.25s"
          values="1000;0;1000;1000"
          keyTimes="0;.4;.8;1"
          dur="3s"
          repeatCount="indefinite"
          id="draw-center"
        />
      </polygon>
    </svg>

    <div class="message">Loading...</div>
  </div>
);

export default Loading;
