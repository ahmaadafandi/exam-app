const menuItems = {
  items: [
    {
      id: 'navigation',
      title: 'Navigation',
      type: 'group',
      icon: 'icon-navigation',
      children: [
        {
          id: 'dashboard',
          title: 'Dashboard',
          type: 'item',
          icon: 'feather icon-home',
          url: '/app/dashboard/default'
        }
      ]
    },
    {
      id: 'konten-element',
      title: 'KONTEN ELEMENT',
      type: 'group',
      icon: 'icon-ui',
      children: [
        {
          id: 'data_soal',
          title: 'Data Soal',
          type: 'collapse',
          icon: 'feather icon-box',
          children: [
            {
              id: 'manage_soal',
              title: 'Buat Soal',
              type: 'item',
              url: '/soal-manage'
            },
            {
              id: 'soal',
              title: 'Soal',
              type: 'item',
              url: '/soal'
            },
            {
              id: 'jenis_soal',
              title: 'Jenis Soal',
              type: 'item',
              url: '/soal-jenis'
            },
            {
              id: 'paket_soal',
              title: 'Paket Soal',
              type: 'item',
              url: '/soal-paket'
            }
            // {
            //   id: 'collapse',
            //   title: 'Collapse',
            //   type: 'item',
            //   url: '/basic/collapse'
            // },
            // {
            //   id: 'tabs-pills',
            //   title: 'Tabs & Pills',
            //   type: 'item',
            //   url: '/basic/tabs-pills'
            // },
            // {
            //   id: 'typography',
            //   title: 'Typography',
            //   type: 'item',
            //   url: '/basic/typography'
            // }
          ]
        }
      ]
    },
    {
      id: 'ui-manajement',
      title: 'DATA MANAJEMEN',
      type: 'group',
      icon: 'icon-group',
      children: [
        // {
        //   id: 'forms',
        //   title: 'Form Elements',
        //   type: 'item',
        //   icon: 'feather icon-file-text',
        //   url: '/forms/form-basic'
        // },
        {
          id: 'data_user',
          title: 'User',
          type: 'item',
          icon: 'feather icon-user',
          url: '/data/user'
        },
        {
          id: 'data',
          title: 'Data',
          type: 'item',
          icon: 'feather icon-server',
          url: '/tables/bootstrap'
        },
        {
          id: 'documentation',
          title: 'Documentation',
          type: 'item',
          icon: 'feather icon-book',
          url: 'https://codedthemes.gitbook.io/datta/'
        }
      ]
    }
    // {
    //   id: 'chart-maps',
    //   title: 'Chart & Maps',
    //   type: 'group',
    //   icon: 'icon-charts',
    //   children: [
    //     {
    //       id: 'charts',
    //       title: 'Charts',
    //       type: 'item',
    //       icon: 'feather icon-pie-chart',
    //       url: '/charts/nvd3'
    //     },
    //     {
    //       id: 'maps',
    //       title: 'Maps',
    //       type: 'item',
    //       icon: 'feather icon-map',
    //       url: '/maps/google-map'
    //     }
    //   ]
    // },
    // {
    //   id: 'pages',
    //   title: 'Pages',
    //   type: 'group',
    //   icon: 'icon-pages',
    //   children: [
    //     {
    //       id: 'auth',
    //       title: 'Authentication',
    //       type: 'collapse',
    //       icon: 'feather icon-lock',
    //       badge: {
    //         title: 'New',
    //         type: 'label-danger'
    //       },
    //       children: [
    //         {
    //           id: 'signup-1',
    //           title: 'Sign up',
    //           type: 'item',
    //           url: '/auth/signup-1',
    //           target: true,
    //           breadcrumbs: false
    //         },
    //         {
    //           id: 'signin-1',
    //           title: 'Sign in',
    //           type: 'item',
    //           url: '/auth/signin-1',
    //           target: true,
    //           breadcrumbs: false
    //         }
    //       ]
    //     },
    //     {
    //       id: 'sample-page',
    //       title: 'Sample Page',
    //       type: 'item',
    //       url: '/sample-page',
    //       classes: 'nav-item',
    //       icon: 'feather icon-sidebar'
    //     },
    //     {
    //       id: 'menu-level',
    //       title: 'Menu Levels',
    //       type: 'collapse',
    //       icon: 'feather icon-menu',
    //       children: [
    //         {
    //           id: 'menu-level-1.1',
    //           title: 'Menu Level 1.1',
    //           type: 'item',
    //           url: '#!'
    //         },
    //         {
    //           id: 'menu-level-1.2',
    //           title: 'Menu Level 2.2',
    //           type: 'collapse',
    //           children: [
    //             {
    //               id: 'menu-level-2.1',
    //               title: 'Menu Level 2.1',
    //               type: 'item',
    //               url: '#'
    //             },
    //             {
    //               id: 'menu-level-2.2',
    //               title: 'Menu Level 2.2',
    //               type: 'collapse',
    //               children: [
    //                 {
    //                   id: 'menu-level-3.1',
    //                   title: 'Menu Level 3.1',
    //                   type: 'item',
    //                   url: '#'
    //                 },
    //                 {
    //                   id: 'menu-level-3.2',
    //                   title: 'Menu Level 3.2',
    //                   type: 'item',
    //                   url: '#'
    //                 }
    //               ]
    //             }
    //           ]
    //         }
    //       ]
    //     },
    //     {
    //       id: 'disabled-menu',
    //       title: 'Disabled Menu',
    //       type: 'item',
    //       url: '#',
    //       classes: 'nav-item disabled',
    //       icon: 'feather icon-power'
    //     }
    //   ]
    // }
  ]
};

export default menuItems;
