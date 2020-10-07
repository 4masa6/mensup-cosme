class Age < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '〜19才' },
    { id: 3, name: '20〜24才' },
    { id: 4, name: '25〜29才' },
    { id: 5, name: '30〜34才' },
    { id: 6, name: '35〜39才' },
    { id: 7, name: '40〜44才' },
    { id: 8, name: '45〜49才' },
    { id: 9, name: '50〜54才' },
    { id: 10, name: '55〜59才' },
    { id: 11, name: '60才〜' }
  ]
  end